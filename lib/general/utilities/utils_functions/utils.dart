part of 'UtilsImports.dart';

class Utils {
  static Future<bool> manipulateLoginData(
      BuildContext context, dynamic data, String token) async {
    if (data != null) {
      await Storage.setDeviceId(token);
      UserModel user = UserModel.fromJson(data);
      user.token = data["token"];
      GlobalState.instance.set("token", data["token"]);
      await Storage.saveUserData(user);
      setCurrentUserData(user, context);
      CustomToast.showSimpleToast(msg: data["message"]);
      return true;
    } else {
      CustomToast.showSimpleToast(msg: data["message"]);
      return false;
    }
  }

  static Future<dynamic> manipulateActiveData(
      BuildContext context, dynamic data, String token) async {
    if (data != null && data["status"] == 200) {
      await Storage.setDeviceId(token);
      UserModel user = UserModel.fromJson(data);
      user.token = data["data"]["token"];
      GlobalState.instance.set("token", data["data"]["token"]);
      await Storage.saveUserData(user);
      setCurrentUserData(user, context);
      CustomToast.showSimpleToast(msg: data["message"]);
      return data;
    } else {
      return data;
    }
  }

  static void setCurrentUserData(UserModel model, BuildContext context) async {
    context.read<UserCubit>().onUpdateUserData(model);
    context.read<AuthCubit>().onUpdateAuth(true);
    // route to home page
    if(model.userType == 'client'){
      AutoRouter.of(context).push(HomeRoute());
    } else {
      AutoRouter.of(context).push(ProvHomeRoute());
    }
  }

  static void changeLanguage(String lang, BuildContext context) {
    DioUtils.lang = lang;
    DecorationUtils.lang = lang;
    Storage.setLang(lang);
    context.read<LangCubit>().onUpdateLanguage(lang);
  }

  static void navigateToMapWithDirection(
      {required String lat,
        required String lng,
        required BuildContext context}) async {
    if (lat == "0") return;
    try {
      final coords = Coords(double.parse(lat), double.parse(lng));
      final title = "Destination";
      final availableMaps = await MapLauncher.installedMaps;

      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Wrap(
                  children: <Widget>[
                    for (var map in availableMaps)
                      ListTile(
                        onTap: () => map.showMarker(
                          coords: coords,
                          title: title,
                        ),
                        title: Text(map.mapName),
                        leading: SvgPicture.asset(
                          map.icon,
                          height: 30.0,
                          width: 30.0,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } catch (e) {
      CustomToast.showSimpleToast(msg: "$e");
    }
  }

}
