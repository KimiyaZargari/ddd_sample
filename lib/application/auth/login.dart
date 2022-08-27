import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/auth/login_model.dart';
import 'package:ddd_sample/domain/auth/login_response_model.dart';

import '../core/failures.dart';
import '../core/usecase.dart';

class Login implements UseCase<LoginResponseModel, LoginModel> {
  IAuthRepository authRepository;

  Login(this.authRepository);

  @override
  Future<Either<NetworkFailure, LoginResponseModel>> call(loginModel) async {
    return await authRepository.login(loginModel);
  }
}
