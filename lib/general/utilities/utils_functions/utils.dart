part of 'UtilsImports.dart';

class Utils {
  static Future<bool> manipulateLoginData(
      BuildContext context, dynamic data, String token) async {
    if (data != null) {
      await Storage.setDeviceId(token);
      UserModel user = UserModel.fromJson(data["data"]["user"]);
      user.token = data["data"]["user"]["token"];
      GlobalState.instance.set("token", data["data"]["user"]["token"]);
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
    if (model.status == "active") {
      if (model.userType == 'client') {
        AutoRouter.of(context).push(HomeRoute());
      } else {
        AutoRouter.of(context).push(ProvHomeRoute());
      }
    } else {
      AutoRouter.of(context)
          .push(VerifyCodeRoute(email: model.phone, fromRegister: true));
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

  static Future<LocationData?> getCurrentLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _loc;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _loc = await location.getLocation();
    return _loc;
  }

  static void navigateToLocationAddress(
      BuildContext context, LocationCubit locCubit) async {
    FocusScope.of(context).requestFocus(FocusNode());
    LoadingDialog.showLoadingDialog();
    var current = await Utils.getCurrentLocation();
    LocationModel locationModel = locCubit.state.model!;
    if (current != null) {
      locationModel = LocationModel(
          lat: current.latitude ?? 0, lng: current.longitude ?? 0, address: "");
    }
    double lat = locationModel.lat;
    double lng = locationModel.lng;
    String address = await getAddress(LatLng(lat, lng), context);
    locationModel.address = address;
    locCubit.onLocationUpdated(locationModel);
    EasyLoading.dismiss();
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (cxt) => BlocProvider.value(
          value: locCubit,
          child: LocationAddress(),
        ),
      ),
    );
  }

  static Future<String> getAddress(LatLng latLng, BuildContext context) async {
    GeoCode geoCode = GeoCode();

    try {
      var address = await geoCode.reverseGeocoding(
          latitude: latLng.latitude, longitude: latLng.longitude);
      var data =
          "${address.countryName ?? ""}  ${address.city ?? ""}  ${address.region ?? ""}  ${address.streetAddress ?? ""}";
      print(data);
      return data;
    } catch (e) {
      return "";
    }
  }
}
