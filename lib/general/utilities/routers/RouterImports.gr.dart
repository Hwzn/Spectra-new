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
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:hwzn_base/general/screens/about/AboutImports.dart' as _i8;
import 'package:hwzn_base/general/screens/contact_us/ContactUsImports.dart'
    as _i9;
import 'package:hwzn_base/general/screens/forget_password/ForgetPasswordImports.dart'
    as _i5;
import 'package:hwzn_base/general/screens/image_zoom/ImageZoom.dart' as _i10;
import 'package:hwzn_base/general/screens/login/LoginImports.dart' as _i4;
import 'package:hwzn_base/general/screens/register/RegisterImports.dart'
    as _i12;
import 'package:hwzn_base/general/screens/reset_password/ResetPasswordImports.dart'
    as _i6;
import 'package:hwzn_base/general/screens/select_user/SelectUserImports.dart'
    as _i3;
import 'package:hwzn_base/general/screens/splash/SplashImports.dart' as _i1;
import 'package:hwzn_base/general/screens/terms/TermsImports.dart' as _i7;
import 'package:hwzn_base/general/screens/verify_code/VerifyCodeImports.dart'
    as _i11;
import 'package:hwzn_base/general/screens/welcome_page/WelcomePageImports.dart'
    as _i2;
import 'package:hwzn_base/user/screens/all_chats/AllChatsImports.dart' as _i15;
import 'package:hwzn_base/user/screens/home/HomeImports.dart' as _i13;
import 'package:hwzn_base/user/screens/notifications/NotificationsImports.dart'
    as _i16;
import 'package:hwzn_base/user/screens/profile/ProfileImports.dart' as _i17;
import 'package:hwzn_base/user/screens/specialization/SpecializationImports.dart'
    as _i14;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.Splash(navigatorKey: args.navigatorKey),
        opaque: true,
      );
    },
    WelcomePageRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomePage(),
        opaque: true,
      );
    },
    SelectUserRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.SelectUser(),
        transitionsBuilder: _i18.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassword(),
        opaque: true,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.ResetPassword(
          key: args.key,
          email: args.email,
          code: args.code,
        ),
        opaque: true,
      );
    },
    TermsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.Terms(),
        opaque: true,
      );
    },
    AboutRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.About(),
        opaque: true,
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.ContactUs(),
        opaque: true,
      );
    },
    ImageZoomRoute.name: (routeData) {
      final args = routeData.argsAs<ImageZoomRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i10.ImageZoom(images: args.images),
        opaque: true,
      );
    },
    VerifyCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyCodeRouteArgs>();
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.VerifyCode(
          key: args.key,
          email: args.email,
          fromRegister: args.fromRegister,
        ),
        opaque: true,
      );
    },
    RegisterRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.Register(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i13.Home(),
        opaque: true,
      );
    },
    SpecializationRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i14.Specialization(),
        opaque: true,
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i15.AllChats(),
        opaque: true,
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.Notifications(),
        opaque: true,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i18.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.Profile(),
        opaque: true,
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i18.RouteConfig(
          WelcomePageRoute.name,
          path: '/welcome-page',
        ),
        _i18.RouteConfig(
          SelectUserRoute.name,
          path: '/select-user',
        ),
        _i18.RouteConfig(
          LoginRoute.name,
          path: '/Login',
        ),
        _i18.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        ),
        _i18.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i18.RouteConfig(
          TermsRoute.name,
          path: '/Terms',
        ),
        _i18.RouteConfig(
          AboutRoute.name,
          path: '/About',
        ),
        _i18.RouteConfig(
          ContactUsRoute.name,
          path: '/contact-us',
        ),
        _i18.RouteConfig(
          ImageZoomRoute.name,
          path: '/image-zoom',
        ),
        _i18.RouteConfig(
          VerifyCodeRoute.name,
          path: '/verify-code',
        ),
        _i18.RouteConfig(
          RegisterRoute.name,
          path: '/Register',
        ),
        _i18.RouteConfig(
          HomeRoute.name,
          path: '/Home',
        ),
        _i18.RouteConfig(
          SpecializationRoute.name,
          path: '/Specialization',
        ),
        _i18.RouteConfig(
          AllChatsRoute.name,
          path: '/all-chats',
        ),
        _i18.RouteConfig(
          NotificationsRoute.name,
          path: '/Notifications',
        ),
        _i18.RouteConfig(
          ProfileRoute.name,
          path: '/Profile',
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i18.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({required _i19.GlobalKey<_i19.NavigatorState> navigatorKey})
      : super(
          SplashRoute.name,
          path: '/',
          args: SplashRouteArgs(navigatorKey: navigatorKey),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({required this.navigatorKey});

  final _i19.GlobalKey<_i19.NavigatorState> navigatorKey;

  @override
  String toString() {
    return 'SplashRouteArgs{navigatorKey: $navigatorKey}';
  }
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomePageRoute extends _i18.PageRouteInfo<void> {
  const WelcomePageRoute()
      : super(
          WelcomePageRoute.name,
          path: '/welcome-page',
        );

  static const String name = 'WelcomePageRoute';
}

/// generated route for
/// [_i3.SelectUser]
class SelectUserRoute extends _i18.PageRouteInfo<void> {
  const SelectUserRoute()
      : super(
          SelectUserRoute.name,
          path: '/select-user',
        );

  static const String name = 'SelectUserRoute';
}

/// generated route for
/// [_i4.Login]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/Login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.ForgetPassword]
class ForgetPasswordRoute extends _i18.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i6.ResetPassword]
class ResetPasswordRoute extends _i18.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i19.Key? key,
    required String email,
    required String code,
  }) : super(
          ResetPasswordRoute.name,
          path: '/reset-password',
          args: ResetPasswordRouteArgs(
            key: key,
            email: email,
            code: code,
          ),
        );

  static const String name = 'ResetPasswordRoute';
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    this.key,
    required this.email,
    required this.code,
  });

  final _i19.Key? key;

  final String email;

  final String code;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email, code: $code}';
  }
}

/// generated route for
/// [_i7.Terms]
class TermsRoute extends _i18.PageRouteInfo<void> {
  const TermsRoute()
      : super(
          TermsRoute.name,
          path: '/Terms',
        );

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i8.About]
class AboutRoute extends _i18.PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: '/About',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i9.ContactUs]
class ContactUsRoute extends _i18.PageRouteInfo<void> {
  const ContactUsRoute()
      : super(
          ContactUsRoute.name,
          path: '/contact-us',
        );

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i10.ImageZoom]
class ImageZoomRoute extends _i18.PageRouteInfo<ImageZoomRouteArgs> {
  ImageZoomRoute({required List<dynamic> images})
      : super(
          ImageZoomRoute.name,
          path: '/image-zoom',
          args: ImageZoomRouteArgs(images: images),
        );

  static const String name = 'ImageZoomRoute';
}

class ImageZoomRouteArgs {
  const ImageZoomRouteArgs({required this.images});

  final List<dynamic> images;

  @override
  String toString() {
    return 'ImageZoomRouteArgs{images: $images}';
  }
}

/// generated route for
/// [_i11.VerifyCode]
class VerifyCodeRoute extends _i18.PageRouteInfo<VerifyCodeRouteArgs> {
  VerifyCodeRoute({
    _i19.Key? key,
    required String email,
    bool? fromRegister,
  }) : super(
          VerifyCodeRoute.name,
          path: '/verify-code',
          args: VerifyCodeRouteArgs(
            key: key,
            email: email,
            fromRegister: fromRegister,
          ),
        );

  static const String name = 'VerifyCodeRoute';
}

class VerifyCodeRouteArgs {
  const VerifyCodeRouteArgs({
    this.key,
    required this.email,
    this.fromRegister,
  });

  final _i19.Key? key;

  final String email;

  final bool? fromRegister;

  @override
  String toString() {
    return 'VerifyCodeRouteArgs{key: $key, email: $email, fromRegister: $fromRegister}';
  }
}

/// generated route for
/// [_i12.Register]
class RegisterRoute extends _i18.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/Register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i13.Home]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/Home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i14.Specialization]
class SpecializationRoute extends _i18.PageRouteInfo<void> {
  const SpecializationRoute()
      : super(
          SpecializationRoute.name,
          path: '/Specialization',
        );

  static const String name = 'SpecializationRoute';
}

/// generated route for
/// [_i15.AllChats]
class AllChatsRoute extends _i18.PageRouteInfo<void> {
  const AllChatsRoute()
      : super(
          AllChatsRoute.name,
          path: '/all-chats',
        );

  static const String name = 'AllChatsRoute';
}

/// generated route for
/// [_i16.Notifications]
class NotificationsRoute extends _i18.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: '/Notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i17.Profile]
class ProfileRoute extends _i18.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/Profile',
        );

  static const String name = 'ProfileRoute';
}
