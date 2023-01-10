part of 'RouterImports.dart';


@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //general routes
    AdaptiveRoute(page: Splash, initial: true),
    AdaptiveRoute(page: WelcomePage),
    CustomRoute(page: SelectUser,transitionsBuilder: TransitionsBuilders.fadeIn,durationInMilliseconds: 1500),
    CustomRoute(page: Login,),
    AdaptiveRoute(page: ForgetPassword),
    AdaptiveRoute(page: ResetPassword),
    AdaptiveRoute(page: Terms),
    AdaptiveRoute(page: About),
    AdaptiveRoute(page: ContactUs),
    AdaptiveRoute(page: ImageZoom),
    AdaptiveRoute(page: VerifyCode),

    // user routes
    AdaptiveRoute(page: Register),
    AdaptiveRoute(page: Home),
    AdaptiveRoute(page: Specialization),
    AdaptiveRoute(page: AllChats),
    AdaptiveRoute(page: Notifications),


  ],
)
class $AppRouter {}