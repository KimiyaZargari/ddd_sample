import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../auth/screens/business_welcome_page.dart';
import '../auth/screens/create_account_page.dart';
import '../auth/screens/email_verification_page.dart';
import '../auth/screens/influencer_welcome_page.dart';
import '../auth/screens/login_page.dart';
import '../auth/screens/sign_up_page.dart';
import '../auth/screens/splash.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/splash', page: SplashPage, initial: true),
    // AutoRoute(
    //   path: '/influencer/dashboard',
    //   page: InfluencerDashboardPage,
    // ),
    // AutoRoute(
    //   path: '/business/dashboard',
    //   page: BusinessDashboardPage,
    // ),

    AutoRoute(
      path: '/auth/login',
      page: LoginPage,
    ),
    AutoRoute(
      path: '/auth/sign_up/create_account',
      page: CreateAccountPage,
    ),
    // AutoRoute(
    //   path: '/forgot_password/email',
    //   page: EnterEmailPage,
    // ),

    // AutoRoute(
    //   path: '/forgot_password/otp',
    //   page: OTPPage,
    // ),
    // AutoRoute(
    //   path: '/forgot_password/reset_password',
    //   page: ResetPasswordPage,
    // ),

    AutoRoute(path: '/auth/sign_up', page: SignUpPage),

    AutoRoute(
        path: '/auth/sign_up/create_account/email_verification',
        page: EmailVerificationPage),
    AutoRoute(path: '/get_started', page: BusinessWelcomePage),
    AutoRoute(path: '/get_started', page: InfluencerWelcomePage),
  ],
)
class $AppRouter {}
