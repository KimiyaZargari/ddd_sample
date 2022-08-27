import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/auth/login_response_model.dart';
import 'package:ddd_sample/domain/core/no_param.dart';

import '../core/failures.dart';
import '../core/usecase.dart';

class GetUserDetails implements UseCase<UserDataModel, NoParam> {
  IAuthRepository authRepository;

  GetUserDetails(this.authRepository);

  @override
  Future<Either<Failure, UserDataModel>> call(_) async {
    return await authRepository.getUserDetails();
  }
}
