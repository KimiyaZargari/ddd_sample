import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/login_model.dart';
import 'package:ddd_sample/domain/auth/login_response_model.dart';

import '../../application/core/failures.dart';
import '../core/enums.dart';
import 'otp_model.dart';

abstract class IAuthRepository {
  Future<Either<NetworkFailure, LoginResponseModel>> login(
      LoginModel loginModel);

  Future<Either<NetworkFailure, Unit>> checkEmail(String email);

  Future<Either<NetworkFailure, Unit>> resendOTP(String email);

  Future<Either<NetworkFailure, LoginResponseModel>> sendOTP(OTPModel otpModel);

  Future<bool> saveToken(String token);

  Future<bool> saveUserType(UserType userType);

  Future<String?> fetchToken();

 Future<Either<Failure, UserDataModel>> getUserDetails();
}
