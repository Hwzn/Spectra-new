// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/intro_screen/intro_screen_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.Login());
    },
    IntroScreenRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.IntroScreen());
    },
    RegisterRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Register());
    },
    ActiveAccountRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ActiveAccount());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(LoginRoute.name, path: '/Login'),
        _i6.RouteConfig(IntroScreenRoute.name, path: '/intro-screen'),
        _i6.RouteConfig(RegisterRoute.name, path: '/Register'),
        _i6.RouteConfig(ActiveAccountRoute.name, path: '/active-account')
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/Login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.IntroScreen]
class IntroScreenRoute extends _i6.PageRouteInfo<void> {
  const IntroScreenRoute()
      : super(IntroScreenRoute.name, path: '/intro-screen');

  static const String name = 'IntroScreenRoute';
}

/// generated route for
/// [_i4.Register]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/Register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.ActiveAccount]
class ActiveAccountRoute extends _i6.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(ActiveAccountRoute.name, path: '/active-account');

  static const String name = 'ActiveAccountRoute';
}
