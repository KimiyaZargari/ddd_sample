// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../auth/screens/business_welcome_page.dart' as _i6;
import '../auth/screens/create_account_page.dart' as _i3;
import '../auth/screens/email_verification_page.dart' as _i5;
import '../auth/screens/influencer_welcome_page.dart' as _i7;
import '../auth/screens/login_page.dart' as _i2;
import '../auth/screens/sign_up_page.dart' as _i4;
import '../auth/screens/splash.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginPage(key: args.key));
    },
    CreateAccountRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAccountRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CreateAccountPage(args.isBusiness, key: args.key));
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpPage());
    },
    EmailVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<EmailVerificationRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.EmailVerificationPage(
              email: args.email, isBusiness: args.isBusiness, key: args.key));
    },
    BusinessWelcomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.BusinessWelcomePage());
    },
    InfluencerWelcomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.InfluencerWelcomePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i8.RouteConfig(SplashRoute.name, path: '/splash'),
        _i8.RouteConfig(LoginRoute.name, path: '/auth/login'),
        _i8.RouteConfig(CreateAccountRoute.name,
            path: '/auth/sign_up/create_account'),
        _i8.RouteConfig(SignUpRoute.name, path: '/auth/sign_up'),
        _i8.RouteConfig(EmailVerificationRoute.name,
            path: '/auth/sign_up/create_account/email_verification'),
        _i8.RouteConfig(BusinessWelcomeRoute.name, path: '/get_started'),
        _i8.RouteConfig(InfluencerWelcomeRoute.name, path: '/get_started')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i9.Key? key})
      : super(LoginRoute.name,
            path: '/auth/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CreateAccountPage]
class CreateAccountRoute extends _i8.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({required bool isBusiness, _i9.Key? key})
      : super(CreateAccountRoute.name,
            path: '/auth/sign_up/create_account',
            args: CreateAccountRouteArgs(isBusiness: isBusiness, key: key));

  static const String name = 'CreateAccountRoute';
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({required this.isBusiness, this.key});

  final bool isBusiness;

  final _i9.Key? key;

  @override
  String toString() {
    return 'CreateAccountRouteArgs{isBusiness: $isBusiness, key: $key}';
  }
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/auth/sign_up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.EmailVerificationPage]
class EmailVerificationRoute
    extends _i8.PageRouteInfo<EmailVerificationRouteArgs> {
  EmailVerificationRoute(
      {required String email, bool isBusiness = true, _i9.Key? key})
      : super(EmailVerificationRoute.name,
            path: '/auth/sign_up/create_account/email_verification',
            args: EmailVerificationRouteArgs(
                email: email, isBusiness: isBusiness, key: key));

  static const String name = 'EmailVerificationRoute';
}

class EmailVerificationRouteArgs {
  const EmailVerificationRouteArgs(
      {required this.email, this.isBusiness = true, this.key});

  final String email;

  final bool isBusiness;

  final _i9.Key? key;

  @override
  String toString() {
    return 'EmailVerificationRouteArgs{email: $email, isBusiness: $isBusiness, key: $key}';
  }
}

/// generated route for
/// [_i6.BusinessWelcomePage]
class BusinessWelcomeRoute extends _i8.PageRouteInfo<void> {
  const BusinessWelcomeRoute()
      : super(BusinessWelcomeRoute.name, path: '/get_started');

  static const String name = 'BusinessWelcomeRoute';
}

/// generated route for
/// [_i7.InfluencerWelcomePage]
class InfluencerWelcomeRoute extends _i8.PageRouteInfo<void> {
  const InfluencerWelcomeRoute()
      : super(InfluencerWelcomeRoute.name, path: '/get_started');

  static const String name = 'InfluencerWelcomeRoute';
}
