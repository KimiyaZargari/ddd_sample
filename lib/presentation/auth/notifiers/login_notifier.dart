import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ddd_sample/application/auth/login.dart';
import 'package:ddd_sample/application/auth/save_token.dart';
import 'package:ddd_sample/application/core/failures.dart';
import 'package:ddd_sample/domain/auth/business_login_response_model.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/auth/influencer_login_response_model.dart';
import 'package:ddd_sample/domain/auth/login_model.dart';
import 'package:ddd_sample/infrastructure/core/http_services.dart';
import 'package:ddd_sample/presentation/business_profile/notifiers/providers.dart';

import '../../../application/auth/save_user_type.dart';
import '../../../domain/core/enums.dart';
import '../../core/strings.dart';
import '../../influencer_profile/notifier/providers.dart';
import '../../routes/router.gr.dart';

abstract class LoginState {
  LoginState();
}

class LoginInitial extends LoginState {
  LoginInitial();
}

class LoginLoading extends LoginState {
  LoginLoading();
}

class LoginError extends LoginState {
  final String message;

  LoginError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class LoginNotifier extends StateNotifier<LoginState> {
  late String password, email;
  IAuthRepository repository;

  LoginNotifier({required this.repository}) : super(LoginInitial());

  login(BuildContext context, WidgetRef ref) async {
    state = LoginLoading();
    final loginModel = LoginModel(
        email: email, password: password, deviceType: 1, deviceToken: 'numnum');
    Login login = Login(repository);
    (await login(loginModel)).fold((l) {
      String errorMessage;
      if (l is UnauthenticatedUser) {
        errorMessage = 'Incorrect email and password combination!';
      } else if (l is NotFound) {
        errorMessage = l.message ?? AppStrings.noEmailError;
      } else if (l is UnverifiedUser) {
        context.router.push(EmailVerificationRoute(
            isBusiness: l.userType == UserType.business,
            email: l.email.toString()));
        errorMessage = l.message.toString();
      } else {
        errorMessage = 'An unknown error occurred.Please try again!';
      }
      state = LoginError(errorMessage);
    }, (loginResponse) async {
      SaveToken saveToken = SaveToken(repository);
      SaveUserType saveUserType = SaveUserType(repository);

      await saveToken(loginResponse.token);

      if (loginResponse is InfluencerLoginResponseModel) {
        (await saveUserType(UserType.influencer)).fold((l) => null, (r) {
          ref.read(influencerProvider.state).state =
              loginResponse.userDataModel;

          context.router.replace(const InfluencerWelcomeRoute());
        });
      }
      if (loginResponse is BusinessLoginResponseModel) {
        (await saveUserType(UserType.business)).fold((l) => null, (r) {
          ref.read(businessProvider.state).state = loginResponse.userDataModel;

          context.router.replace(const BusinessWelcomeRoute());
        });
      }

      ref.read(httpServiceProvider.state).state =
          HttpService(loginResponse.token);
    });
  }
}
