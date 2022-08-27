import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';

import '../core/failures.dart';
import '../core/usecase.dart';

class ResendOTP implements UseCase<Unit, String> {
  IAuthRepository authRepository;

  ResendOTP(this.authRepository);

  @override
  Future<Either<NetworkFailure, Unit>> call(email) async {
    return await authRepository.resendOTP(email);
  }
}
