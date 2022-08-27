import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ddd_sample/application/auth/fetch_token.dart';
import 'package:ddd_sample/application/auth/get_user_details.dart';
import 'package:ddd_sample/domain/auth/business_login_response_model.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/auth/influencer_login_response_model.dart';
import 'package:ddd_sample/domain/core/no_param.dart';
import 'package:ddd_sample/infrastructure/core/http_services.dart';
import 'package:ddd_sample/presentation/business_profile/notifiers/providers.dart';

import '../../influencer_profile/notifier/providers.dart';

abstract class SplashState {
  SplashState();
}

class SplashLoading extends SplashState {
  SplashLoading();
}

class NoLogin extends SplashState {
  NoLogin();
}

class BusinessLoggedIn extends SplashState {
  BusinessLoggedIn();
}

class InfluencerLoggedIn extends SplashState {
  InfluencerLoggedIn();
}

class SplashNotifier extends StateNotifier<SplashState> {
  final IAuthRepository repository;

  SplashNotifier(this.repository) : super(SplashLoading());

  loadData(WidgetRef ref) async {
    FetchToken fetchToken = FetchToken(repository);

    if (ref.read(httpServiceProvider).token != null) {

      GetUserDetails getUserDetails = GetUserDetails(repository);
      (await getUserDetails(NoParam())).fold((l) {
        state = NoLogin();
        // ref.read(localStorageProvider).clear();
        // ref.read(httpServiceProvider.state).state = HttpService(null);
      }, (r) {
        if (r is InfluencerDataModel) {
          ref.read(influencerProvider.state).state = r;

          state = InfluencerLoggedIn();
        } else if (r is BusinessDataModel) {
          ref.read(businessProvider.state).state = r;

          state = BusinessLoggedIn();
        }
      });
    } else {
      (await fetchToken(NoParam())).fold((l) {
        state = NoLogin();
      }, (r) async {
        ref.read(httpServiceProvider.state).state = HttpService(r);
      });
    }
  }
}
