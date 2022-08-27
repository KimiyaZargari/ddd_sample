import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ddd_sample/application/auth/check_email.dart';
import 'package:ddd_sample/application/core/failures.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/presentation/core/colors.dart';

import '../../../domain/auth/create_account_model.dart';
import '../../routes/router.gr.dart';

abstract class CreateAccountState {
  CreateAccountState();
}

class CreateAccountInitial extends CreateAccountState {
  CreateAccountInitial();
}

class CreateAccountLoading extends CreateAccountState {
  CreateAccountLoading();
}

class CreateAccountLoaded extends CreateAccountState {
  CreateAccountLoaded();
}

class CreateAccountError extends CreateAccountState {
  final String message;

  CreateAccountError(this.message);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreateAccountError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class CreateAccountNotifier extends StateNotifier<CreateAccountState> {
  final formKey = GlobalKey<FormState>();
  late String password, email;
  String? referralCode;
  IAuthRepository repository;
  final bool isBusiness;

  CreateAccountNotifier({required this.repository, required this.isBusiness})
      : super(CreateAccountInitial());

  Future<void> checkEmail(BuildContext context) async {
    state = CreateAccountLoading();
    CheckEmail checkEmail = CheckEmail(repository);
    await Future.delayed(Duration(seconds: 1));
    (await checkEmail(email)).fold((l) {
      String errorMessage;
      if (l is BadRequest) {
        errorMessage = 'An account with this email address already exists!';
      } else {
        errorMessage =
            l.message ?? 'An unknown error occurred.Please try again!';
      }
      Fluttertoast.showToast(
          msg: errorMessage,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: AppColors.secondaryPink,
          textColor: Colors.white,
          fontSize: 16.0);
      state = CreateAccountError(errorMessage);
    }, (r) {
      state = CreateAccountLoaded();

      context.router.push(EmailVerificationRoute(
        email: email,
        isBusiness: isBusiness,
      ));
    });
  }
}
