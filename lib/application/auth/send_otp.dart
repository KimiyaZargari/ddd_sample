import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/auth/login_response_model.dart';

import '../../domain/auth/otp_model.dart';
import '../core/failures.dart';
import '../core/usecase.dart';

class SendOTP implements UseCase<LoginResponseModel, OTPModel> {
  IAuthRepository authRepository;

  SendOTP(this.authRepository);

  @override
  Future<Either<NetworkFailure, LoginResponseModel>> call(otpModel) async {
    return await authRepository.sendOTP(otpModel);
  }
}
