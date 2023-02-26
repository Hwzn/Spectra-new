part of 'SplashImports.dart';

class SplashController {
  // variables
  Location location = Location();
  List<String> data = [
    "https://img.freepik.com/free-photo/veterinarian-check-ing-puppy-s-health_23-2148728396.jpg?w=2000",
    "https://www.germanvet.ae/wp-content/uploads/2022/10/vet-in-khalifa-city-001.jpg",
    "https://lazypawvet.com/wp-content/uploads/2019/11/juaine_hunter_350-214x300.jpg",
  ];

  // methods
  void checkingData(BuildContext context) async {
   if (!kIsWeb) GlobalNotification.instance.setupNotification(context);
    Future.delayed(const Duration(milliseconds: 1500), () => manipulateSplashData(context));
  }

  Future<void> manipulateSplashData(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await location.requestPermission();
    // var lang = await Storage.getLang();
    // InitUtils.initDio(lang: lang ?? "en");
    InitUtils.initDio(lang: "en");
    // InitUtils.initCustomWidgets(language: lang ?? "en");
    InitUtils.initCustomWidgets(language: "en");
    // Utils.changeLanguage(lang ?? "en", context);
    Utils.changeLanguage("en", context);
    // await GeneralRepository(context).getAppSetting();
    var strUser = prefs.get("user");
    if (strUser != null) {
      UserModel data = UserModel.fromJson(json.decode("$strUser"));
      GlobalState.instance.set("token", data.token);
      Utils.setCurrentUserData(data, context);
    } else {
      context.read<AuthCubit>().onUpdateAuth(false);
      AutoRouter.of(context).push(const WelcomePageRoute());
    }
  }
}
