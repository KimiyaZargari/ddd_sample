import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ddd_sample/domain/core/check_box_model.dart';
import 'package:ddd_sample/infrastructure/auth/auth_repository.dart';
import 'package:ddd_sample/infrastructure/core/local_storage.dart';
import 'package:ddd_sample/presentation/auth/notifiers/create_account_notifier.dart';
import 'package:ddd_sample/presentation/auth/notifiers/email_verification_notifier.dart';
import 'package:ddd_sample/presentation/auth/notifiers/login_notifier.dart';
import 'package:ddd_sample/presentation/auth/notifiers/splash_notifier.dart';

import '../../../domain/core/check_box_model.dart';
import '../../../infrastructure/core/http_services.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) => AuthRepository(
    httpService: ref.watch(httpServiceProvider),
    localStorage: ref.watch(localStorageProvider)));

final loginNotifierProvider =
    StateNotifierProvider.autoDispose<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(repository: ref.watch(authRepositoryProvider)),
);
final emailVerificationProvider = StateNotifierProvider.autoDispose
    .family<EmailVerificationNotifier, EmailVerificationState, String>(
  (ref, email) => EmailVerificationNotifier(
      repository: ref.watch(authRepositoryProvider), email: email),
);

final splashNotifierProvider =
    StateNotifierProvider.autoDispose<SplashNotifier, SplashState>(
  (ref) => SplashNotifier(ref.watch(authRepositoryProvider)),
);
final createAccountNotifierProvider = StateNotifierProvider.autoDispose
    .family<CreateAccountNotifier, CreateAccountState, bool>(
  (ref, isBusiness) => CreateAccountNotifier(
      repository: ref.watch(authRepositoryProvider), isBusiness: isBusiness),
);

final checkBoxNotifierProvider = StateProvider.family<bool, CheckBoxModel>(
  (ref, model) => false,
);
