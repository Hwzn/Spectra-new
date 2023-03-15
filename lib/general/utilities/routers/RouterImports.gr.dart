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
import 'package:auto_route/auto_route.dart' as _i33;
import 'package:flutter/material.dart' as _i34;
import 'package:hwzn_base/general/screens/about/AboutImports.dart' as _i8;
import 'package:hwzn_base/general/screens/contact_us/ContactUsImports.dart'
    as _i9;
import 'package:hwzn_base/general/screens/faq/FAQImports.dart' as _i12;
import 'package:hwzn_base/general/screens/forget_password/ForgetPasswordImports.dart'
    as _i5;
import 'package:hwzn_base/general/screens/image_zoom/ImageZoom.dart' as _i10;
import 'package:hwzn_base/general/screens/login/LoginImports.dart' as _i4;
import 'package:hwzn_base/general/screens/register/RegisterImports.dart'
    as _i13;
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
import 'package:hwzn_base/provider/screens/pet_profile/PetProfileImports.dart'
    as _i31;
import 'package:hwzn_base/provider/screens/prov_home/ProvHomeImports.dart'
    as _i29;
import 'package:hwzn_base/provider/screens/prov_profile/ProvProfileImports.dart'
    as _i30;
import 'package:hwzn_base/provider/screens/prov_register/ProvRegisterImports.dart'
    as _i28;
import 'package:hwzn_base/provider/screens/working_times/WorkingTimesImports.dart'
    as _i32;
import 'package:hwzn_base/user/models/available_day_model.dart' as _i37;
import 'package:hwzn_base/user/models/reservation_model.dart' as _i35;
import 'package:hwzn_base/user/models/review_model.dart' as _i36;
import 'package:hwzn_base/user/screens/add_pet/AddPetImports.dart' as _i19;
import 'package:hwzn_base/user/screens/add_post/AddPostImports.dart' as _i24;
import 'package:hwzn_base/user/screens/add_reservation/AddReservationImports.dart'
    as _i25;
import 'package:hwzn_base/user/screens/all_chats/AllChatsImports.dart' as _i16;
import 'package:hwzn_base/user/screens/doctor_details/DoctorDetailsImports.dart'
    as _i22;
import 'package:hwzn_base/user/screens/home/HomeImports.dart' as _i14;
import 'package:hwzn_base/user/screens/notifications/NotificationsImports.dart'
    as _i17;
import 'package:hwzn_base/user/screens/payment/PaymentImports.dart' as _i26;
import 'package:hwzn_base/user/screens/profile/ProfileImports.dart' as _i18;
import 'package:hwzn_base/user/screens/review_session/ReviewSessionImports.dart'
    as _i21;
import 'package:hwzn_base/user/screens/reviews/ReviewsImports.dart' as _i23;
import 'package:hwzn_base/user/screens/search/SearchImports.dart' as _i27;
import 'package:hwzn_base/user/screens/session/SessionImports.dart' as _i20;
import 'package:hwzn_base/user/screens/specialization/SpecializationImports.dart'
    as _i15;

class AppRouter extends _i33.RootStackRouter {
  AppRouter([_i34.GlobalKey<_i34.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i33.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i1.Splash(navigatorKey: args.navigatorKey),
        opaque: true,
      );
    },
    WelcomePageRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomePage(),
        opaque: true,
      );
    },
    SelectUserRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.SelectUser(),
        transitionsBuilder: _i33.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 1500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassword(),
        opaque: true,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
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
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.Terms(),
        opaque: true,
      );
    },
    AboutRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.About(),
        opaque: true,
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.ContactUs(),
        opaque: true,
      );
    },
    ImageZoomRoute.name: (routeData) {
      final args = routeData.argsAs<ImageZoomRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i10.ImageZoom(images: args.images),
        opaque: true,
      );
    },
    VerifyCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyCodeRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i11.VerifyCode(
          key: args.key,
          email: args.email,
          fromRegister: args.fromRegister,
        ),
        opaque: true,
      );
    },
    FAQRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.FAQ(),
        opaque: true,
      );
    },
    RegisterRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.Register(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i14.Home(),
        opaque: true,
      );
    },
    SpecializationRoute.name: (routeData) {
      final args = routeData.argsAs<SpecializationRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i15.Specialization(
          key: args.key,
          specId: args.specId,
          specName: args.specName,
        ),
        opaque: true,
      );
    },
    AllChatsRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i16.AllChats(),
        opaque: true,
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i17.Notifications(),
        opaque: true,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i18.Profile(),
        opaque: true,
      );
    },
    AddPetRoute.name: (routeData) {
      return _i33.AdaptivePage<bool>(
        routeData: routeData,
        child: const _i19.AddPet(),
        opaque: true,
      );
    },
    SessionRoute.name: (routeData) {
      final args = routeData.argsAs<SessionRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i20.Session(
          key: args.key,
          fromDoctorHome: args.fromDoctorHome,
          model: args.model,
        ),
        opaque: true,
      );
    },
    ReviewSessionRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewSessionRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i21.ReviewSession(
          key: args.key,
          model: args.model,
        ),
        opaque: true,
      );
    },
    DoctorDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorDetailsRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i22.DoctorDetails(
          key: args.key,
          doctorId: args.doctorId,
        ),
        opaque: true,
      );
    },
    ReviewsRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewsRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i23.Reviews(
          key: args.key,
          reviewsList: args.reviewsList,
          avgReviews: args.avgReviews,
        ),
        opaque: true,
      );
    },
    AddPostRoute.name: (routeData) {
      return _i33.AdaptivePage<bool>(
        routeData: routeData,
        child: const _i24.AddPost(),
        opaque: true,
      );
    },
    AddReservationRoute.name: (routeData) {
      final args = routeData.argsAs<AddReservationRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i25.AddReservation(
          key: args.key,
          daysList: args.daysList,
          sessionPrice: args.sessionPrice,
          doctorId: args.doctorId,
        ),
        opaque: true,
      );
    },
    PaymentRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i26.Payment(),
        opaque: true,
      );
    },
    SearchRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i27.Search(),
        opaque: true,
      );
    },
    ProvRegisterRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i28.ProvRegister(),
        opaque: true,
      );
    },
    ProvHomeRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i29.ProvHome(),
        opaque: true,
      );
    },
    ProvProfileRoute.name: (routeData) {
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i30.ProvProfile(),
        opaque: true,
      );
    },
    PetProfileRoute.name: (routeData) {
      final args = routeData.argsAs<PetProfileRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i31.PetProfile(
          key: args.key,
          id: args.id,
        ),
        opaque: true,
      );
    },
    WorkingTimesRoute.name: (routeData) {
      final args = routeData.argsAs<WorkingTimesRouteArgs>();
      return _i33.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i32.WorkingTimes(
          key: args.key,
          daysList: args.daysList,
        ),
        opaque: true,
      );
    },
  };

  @override
  List<_i33.RouteConfig> get routes => [
        _i33.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i33.RouteConfig(
          WelcomePageRoute.name,
          path: '/welcome-page',
        ),
        _i33.RouteConfig(
          SelectUserRoute.name,
          path: '/select-user',
        ),
        _i33.RouteConfig(
          LoginRoute.name,
          path: '/Login',
        ),
        _i33.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        ),
        _i33.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i33.RouteConfig(
          TermsRoute.name,
          path: '/Terms',
        ),
        _i33.RouteConfig(
          AboutRoute.name,
          path: '/About',
        ),
        _i33.RouteConfig(
          ContactUsRoute.name,
          path: '/contact-us',
        ),
        _i33.RouteConfig(
          ImageZoomRoute.name,
          path: '/image-zoom',
        ),
        _i33.RouteConfig(
          VerifyCodeRoute.name,
          path: '/verify-code',
        ),
        _i33.RouteConfig(
          FAQRoute.name,
          path: '/f-aQ',
        ),
        _i33.RouteConfig(
          RegisterRoute.name,
          path: '/Register',
        ),
        _i33.RouteConfig(
          HomeRoute.name,
          path: '/Home',
        ),
        _i33.RouteConfig(
          SpecializationRoute.name,
          path: '/Specialization',
        ),
        _i33.RouteConfig(
          AllChatsRoute.name,
          path: '/all-chats',
        ),
        _i33.RouteConfig(
          NotificationsRoute.name,
          path: '/Notifications',
        ),
        _i33.RouteConfig(
          ProfileRoute.name,
          path: '/Profile',
        ),
        _i33.RouteConfig(
          AddPetRoute.name,
          path: '/add-pet',
        ),
        _i33.RouteConfig(
          SessionRoute.name,
          path: '/Session',
        ),
        _i33.RouteConfig(
          ReviewSessionRoute.name,
          path: '/review-session',
        ),
        _i33.RouteConfig(
          DoctorDetailsRoute.name,
          path: '/doctor-details',
        ),
        _i33.RouteConfig(
          ReviewsRoute.name,
          path: '/Reviews',
        ),
        _i33.RouteConfig(
          AddPostRoute.name,
          path: '/add-post',
        ),
        _i33.RouteConfig(
          AddReservationRoute.name,
          path: '/add-reservation',
        ),
        _i33.RouteConfig(
          PaymentRoute.name,
          path: '/Payment',
        ),
        _i33.RouteConfig(
          SearchRoute.name,
          path: '/Search',
        ),
        _i33.RouteConfig(
          ProvRegisterRoute.name,
          path: '/prov-register',
        ),
        _i33.RouteConfig(
          ProvHomeRoute.name,
          path: '/prov-home',
        ),
        _i33.RouteConfig(
          ProvProfileRoute.name,
          path: '/prov-profile',
        ),
        _i33.RouteConfig(
          PetProfileRoute.name,
          path: '/pet-profile',
        ),
        _i33.RouteConfig(
          WorkingTimesRoute.name,
          path: '/working-times',
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i33.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({required _i34.GlobalKey<_i34.NavigatorState> navigatorKey})
      : super(
          SplashRoute.name,
          path: '/',
          args: SplashRouteArgs(navigatorKey: navigatorKey),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({required this.navigatorKey});

  final _i34.GlobalKey<_i34.NavigatorState> navigatorKey;

  @override
  String toString() {
    return 'SplashRouteArgs{navigatorKey: $navigatorKey}';
  }
}

/// generated route for
/// [_i2.WelcomePage]
class WelcomePageRoute extends _i33.PageRouteInfo<void> {
  const WelcomePageRoute()
      : super(
          WelcomePageRoute.name,
          path: '/welcome-page',
        );

  static const String name = 'WelcomePageRoute';
}

/// generated route for
/// [_i3.SelectUser]
class SelectUserRoute extends _i33.PageRouteInfo<void> {
  const SelectUserRoute()
      : super(
          SelectUserRoute.name,
          path: '/select-user',
        );

  static const String name = 'SelectUserRoute';
}

/// generated route for
/// [_i4.Login]
class LoginRoute extends _i33.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/Login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.ForgetPassword]
class ForgetPasswordRoute extends _i33.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i6.ResetPassword]
class ResetPasswordRoute extends _i33.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i34.Key? key,
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

  final _i34.Key? key;

  final String email;

  final String code;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email, code: $code}';
  }
}

/// generated route for
/// [_i7.Terms]
class TermsRoute extends _i33.PageRouteInfo<void> {
  const TermsRoute()
      : super(
          TermsRoute.name,
          path: '/Terms',
        );

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i8.About]
class AboutRoute extends _i33.PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: '/About',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i9.ContactUs]
class ContactUsRoute extends _i33.PageRouteInfo<void> {
  const ContactUsRoute()
      : super(
          ContactUsRoute.name,
          path: '/contact-us',
        );

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i10.ImageZoom]
class ImageZoomRoute extends _i33.PageRouteInfo<ImageZoomRouteArgs> {
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
class VerifyCodeRoute extends _i33.PageRouteInfo<VerifyCodeRouteArgs> {
  VerifyCodeRoute({
    _i34.Key? key,
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

  final _i34.Key? key;

  final String email;

  final bool? fromRegister;

  @override
  String toString() {
    return 'VerifyCodeRouteArgs{key: $key, email: $email, fromRegister: $fromRegister}';
  }
}

/// generated route for
/// [_i12.FAQ]
class FAQRoute extends _i33.PageRouteInfo<void> {
  const FAQRoute()
      : super(
          FAQRoute.name,
          path: '/f-aQ',
        );

  static const String name = 'FAQRoute';
}

/// generated route for
/// [_i13.Register]
class RegisterRoute extends _i33.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/Register',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i14.Home]
class HomeRoute extends _i33.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/Home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i15.Specialization]
class SpecializationRoute extends _i33.PageRouteInfo<SpecializationRouteArgs> {
  SpecializationRoute({
    _i34.Key? key,
    required int specId,
    required String specName,
  }) : super(
          SpecializationRoute.name,
          path: '/Specialization',
          args: SpecializationRouteArgs(
            key: key,
            specId: specId,
            specName: specName,
          ),
        );

  static const String name = 'SpecializationRoute';
}

class SpecializationRouteArgs {
  const SpecializationRouteArgs({
    this.key,
    required this.specId,
    required this.specName,
  });

  final _i34.Key? key;

  final int specId;

  final String specName;

  @override
  String toString() {
    return 'SpecializationRouteArgs{key: $key, specId: $specId, specName: $specName}';
  }
}

/// generated route for
/// [_i16.AllChats]
class AllChatsRoute extends _i33.PageRouteInfo<void> {
  const AllChatsRoute()
      : super(
          AllChatsRoute.name,
          path: '/all-chats',
        );

  static const String name = 'AllChatsRoute';
}

/// generated route for
/// [_i17.Notifications]
class NotificationsRoute extends _i33.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: '/Notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i18.Profile]
class ProfileRoute extends _i33.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/Profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i19.AddPet]
class AddPetRoute extends _i33.PageRouteInfo<void> {
  const AddPetRoute()
      : super(
          AddPetRoute.name,
          path: '/add-pet',
        );

  static const String name = 'AddPetRoute';
}

/// generated route for
/// [_i20.Session]
class SessionRoute extends _i33.PageRouteInfo<SessionRouteArgs> {
  SessionRoute({
    _i34.Key? key,
    bool fromDoctorHome = false,
    required _i35.ReservationModel model,
  }) : super(
          SessionRoute.name,
          path: '/Session',
          args: SessionRouteArgs(
            key: key,
            fromDoctorHome: fromDoctorHome,
            model: model,
          ),
        );

  static const String name = 'SessionRoute';
}

class SessionRouteArgs {
  const SessionRouteArgs({
    this.key,
    this.fromDoctorHome = false,
    required this.model,
  });

  final _i34.Key? key;

  final bool fromDoctorHome;

  final _i35.ReservationModel model;

  @override
  String toString() {
    return 'SessionRouteArgs{key: $key, fromDoctorHome: $fromDoctorHome, model: $model}';
  }
}

/// generated route for
/// [_i21.ReviewSession]
class ReviewSessionRoute extends _i33.PageRouteInfo<ReviewSessionRouteArgs> {
  ReviewSessionRoute({
    _i34.Key? key,
    required _i35.ReservationModel model,
  }) : super(
          ReviewSessionRoute.name,
          path: '/review-session',
          args: ReviewSessionRouteArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'ReviewSessionRoute';
}

class ReviewSessionRouteArgs {
  const ReviewSessionRouteArgs({
    this.key,
    required this.model,
  });

  final _i34.Key? key;

  final _i35.ReservationModel model;

  @override
  String toString() {
    return 'ReviewSessionRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i22.DoctorDetails]
class DoctorDetailsRoute extends _i33.PageRouteInfo<DoctorDetailsRouteArgs> {
  DoctorDetailsRoute({
    _i34.Key? key,
    required int doctorId,
  }) : super(
          DoctorDetailsRoute.name,
          path: '/doctor-details',
          args: DoctorDetailsRouteArgs(
            key: key,
            doctorId: doctorId,
          ),
        );

  static const String name = 'DoctorDetailsRoute';
}

class DoctorDetailsRouteArgs {
  const DoctorDetailsRouteArgs({
    this.key,
    required this.doctorId,
  });

  final _i34.Key? key;

  final int doctorId;

  @override
  String toString() {
    return 'DoctorDetailsRouteArgs{key: $key, doctorId: $doctorId}';
  }
}

/// generated route for
/// [_i23.Reviews]
class ReviewsRoute extends _i33.PageRouteInfo<ReviewsRouteArgs> {
  ReviewsRoute({
    _i34.Key? key,
    required List<_i36.ReviewModel> reviewsList,
    required double avgReviews,
  }) : super(
          ReviewsRoute.name,
          path: '/Reviews',
          args: ReviewsRouteArgs(
            key: key,
            reviewsList: reviewsList,
            avgReviews: avgReviews,
          ),
        );

  static const String name = 'ReviewsRoute';
}

class ReviewsRouteArgs {
  const ReviewsRouteArgs({
    this.key,
    required this.reviewsList,
    required this.avgReviews,
  });

  final _i34.Key? key;

  final List<_i36.ReviewModel> reviewsList;

  final double avgReviews;

  @override
  String toString() {
    return 'ReviewsRouteArgs{key: $key, reviewsList: $reviewsList, avgReviews: $avgReviews}';
  }
}

/// generated route for
/// [_i24.AddPost]
class AddPostRoute extends _i33.PageRouteInfo<void> {
  const AddPostRoute()
      : super(
          AddPostRoute.name,
          path: '/add-post',
        );

  static const String name = 'AddPostRoute';
}

/// generated route for
/// [_i25.AddReservation]
class AddReservationRoute extends _i33.PageRouteInfo<AddReservationRouteArgs> {
  AddReservationRoute({
    _i34.Key? key,
    required List<_i37.AvailableDayModel> daysList,
    required num sessionPrice,
    required int doctorId,
  }) : super(
          AddReservationRoute.name,
          path: '/add-reservation',
          args: AddReservationRouteArgs(
            key: key,
            daysList: daysList,
            sessionPrice: sessionPrice,
            doctorId: doctorId,
          ),
        );

  static const String name = 'AddReservationRoute';
}

class AddReservationRouteArgs {
  const AddReservationRouteArgs({
    this.key,
    required this.daysList,
    required this.sessionPrice,
    required this.doctorId,
  });

  final _i34.Key? key;

  final List<_i37.AvailableDayModel> daysList;

  final num sessionPrice;

  final int doctorId;

  @override
  String toString() {
    return 'AddReservationRouteArgs{key: $key, daysList: $daysList, sessionPrice: $sessionPrice, doctorId: $doctorId}';
  }
}

/// generated route for
/// [_i26.Payment]
class PaymentRoute extends _i33.PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: '/Payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i27.Search]
class SearchRoute extends _i33.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/Search',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i28.ProvRegister]
class ProvRegisterRoute extends _i33.PageRouteInfo<void> {
  const ProvRegisterRoute()
      : super(
          ProvRegisterRoute.name,
          path: '/prov-register',
        );

  static const String name = 'ProvRegisterRoute';
}

/// generated route for
/// [_i29.ProvHome]
class ProvHomeRoute extends _i33.PageRouteInfo<void> {
  const ProvHomeRoute()
      : super(
          ProvHomeRoute.name,
          path: '/prov-home',
        );

  static const String name = 'ProvHomeRoute';
}

/// generated route for
/// [_i30.ProvProfile]
class ProvProfileRoute extends _i33.PageRouteInfo<void> {
  const ProvProfileRoute()
      : super(
          ProvProfileRoute.name,
          path: '/prov-profile',
        );

  static const String name = 'ProvProfileRoute';
}

/// generated route for
/// [_i31.PetProfile]
class PetProfileRoute extends _i33.PageRouteInfo<PetProfileRouteArgs> {
  PetProfileRoute({
    _i34.Key? key,
    required int id,
  }) : super(
          PetProfileRoute.name,
          path: '/pet-profile',
          args: PetProfileRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'PetProfileRoute';
}

class PetProfileRouteArgs {
  const PetProfileRouteArgs({
    this.key,
    required this.id,
  });

  final _i34.Key? key;

  final int id;

  @override
  String toString() {
    return 'PetProfileRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i32.WorkingTimes]
class WorkingTimesRoute extends _i33.PageRouteInfo<WorkingTimesRouteArgs> {
  WorkingTimesRoute({
    _i34.Key? key,
    required List<_i37.AvailableDayModel> daysList,
  }) : super(
          WorkingTimesRoute.name,
          path: '/working-times',
          args: WorkingTimesRouteArgs(
            key: key,
            daysList: daysList,
          ),
        );

  static const String name = 'WorkingTimesRoute';
}

class WorkingTimesRouteArgs {
  const WorkingTimesRouteArgs({
    this.key,
    required this.daysList,
  });

  final _i34.Key? key;

  final List<_i37.AvailableDayModel> daysList;

  @override
  String toString() {
    return 'WorkingTimesRouteArgs{key: $key, daysList: $daysList}';
  }
}
