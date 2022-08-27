import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/core/no_param.dart';

import '../core/failures.dart';
import '../core/usecase.dart';

class FetchToken implements UseCase<String, NoParam> {
  IAuthRepository authRepository;

  FetchToken(this.authRepository);

  @override
  Future<Either<StorageFailure, String>> call(_) async {
    final token = await authRepository.fetchToken();
    if (token == null) return left(const StorageFailure.couldNotFetchData());
    print(token);
    return right(token);
  }
}
