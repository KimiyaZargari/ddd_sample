import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ddd_sample/application/auth/resend_otp.dart';
import 'package:ddd_sample/application/auth/save_token.dart';
import 'package:ddd_sample/application/auth/save_user_type.dart';
import 'package:ddd_sample/application/auth/send_otp.dart';
import 'package:ddd_sample/application/core/failures.dart';
import 'package:ddd_sample/domain/auth/business_login_response_model.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/auth/influencer_login_response_model.dart';
import 'package:ddd_sample/domain/auth/otp_model.dart';
import 'package:ddd_sample/domain/core/enums.dart';
import 'package:ddd_sample/presentation/business_profile/notifiers/providers.dart';

import '../../../infrastructure/core/http_services.dart';
import '../../influencer_profile/notifier/providers.dart';
import '../../routes/router.gr.dart';

abstract class EmailVerificationState {
  EmailVerificationState();
}

class EmailVerificationInitial extends EmailVerificationState {
  EmailVerificationInitial();
}

class EmailVerificationLoading extends EmailVerificationState {
  EmailVerificationLoading();
}
//
// class CreateAccountLoaded extends EmailVerificationAccountState {
//   CreateAccountLoaded();
// }

class EmailVerificationError extends EmailVerificationState {
  final String message;

  EmailVerificationError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmailVerificationError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class EmailVerificationNotifier extends StateNotifier<EmailVerificationState> {
  final formKey = GlobalKey<FormState>();
  late String otp;
  final String email;

  IAuthRepository repository;

  EmailVerificationNotifier({required this.repository, required this.email})
      : super(EmailVerificationInitial());

  Future<void> sendOTP(
      BuildContext context, bool isBusiness, WidgetRef ref) async {
    state = EmailVerificationLoading();
    SendOTP sendOTP = SendOTP(repository);
    (await sendOTP(OTPModel(
            email: email, otp: otp, deviceType: 1, deviceToken: 'sdkj')))
        .fold((l) {
      String errorMessage = ''; //todo fix
      if (l is BadRequest) {
        //  errorMessage = "An account with this email address already exists!";
      } else {
        //  errorMessage = "An unknown error occurred.Please try again!";
      }
      state = EmailVerificationError(errorMessage);
    }, (response) async {
      SaveToken saveToken = SaveToken(repository);
      SaveUserType saveUserType = SaveUserType(repository);
      await saveToken(response.token);

      ref.read(httpServiceProvider.state).state = HttpService(response.token);

      context.router.popUntilRoot();
      //Navigator.of(context).pop();
      if (response is InfluencerLoginResponseModel) {
        (await saveUserType(UserType.influencer)).fold((l) => null, (r) {
          ref.read(influencerProvider.state).state = response.userDataModel;

          context.router.push(const InfluencerWelcomeRoute());
        });
      } else if (response is BusinessLoginResponseModel) {
        (await saveUserType(UserType.business)).fold((l) => null, (r) {
          ref.read(businessProvider.state).state = response.userDataModel;

          context.router.push(BusinessWelcomeRoute());
        });
      }
      //  context.router.pop();
    });
  }

  Future<void> resendOTP() async {
    // state = EmailVerificationLoading();
    ResendOTP resendOTP = ResendOTP(repository);
    (await resendOTP(email)).fold((l) {
      String errorMessage = ''; //todo fix
      if (l is BadRequest) {
        //  errorMessage = "An account with this email address already exists!";
      } else {
        //  errorMessage = "An unknown error occurred.Please try again!";
      }
      state = EmailVerificationError(errorMessage);
    }, (r) async {});
  }
}
