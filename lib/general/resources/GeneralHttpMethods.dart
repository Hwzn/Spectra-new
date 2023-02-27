part of 'GeneralRepoImports.dart';

class GeneralHttpMethods {
  final BuildContext context;

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  GeneralHttpMethods(this.context);

  // auth

  Future<bool> userLogin(String phone, String pass, String countryCode) async {
    String? token = await messaging.getToken();
    Map<String, dynamic> body = {
      "country_code": countryCode,
      "phone": phone,
      "password": pass,
      "device_id": token,
      "device_type": Platform.isIOS ? "ios" : "android",
    };

    var data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.login,
      json: body,
      returnType: ReturnType.type,
      methodType: MethodType.post,
      returnDataFun: (data) => data,
      toJsonFunc: (json) => UserModel.fromJson(json),
      showLoader: false,
    );
    if (data != null) {
      return Utils.manipulateLoginData(context, data, token ?? '');
    } else {
      return false;
    }
  }

  Future<bool> registerClient(RegisterModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.registerClient,
      json: model.toJson(),
      returnType: ReturnType.type,
      returnDataFun: (data) => data,
      showLoader: false,
      methodType: MethodType.post,
    );
    if (data != null) {
      AutoRouter.of(context)
          .popAndPush(VerifyCodeRoute(email: data["data"]["user_phone"]));
      return true;
    } else {
      return false;
    }
  }

  Future<bool> registerDoctor(RegisterDoctorModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.registerDoctor,
      json: model.toJson(),
      returnType: ReturnType.type,
      returnDataFun: (data) => data,
      showLoader: false,
      methodType: MethodType.post,
    );
    if (data != null) {
      AutoRouter.of(context)
          .popAndPush(VerifyCodeRoute(email: data["data"]["user_phone"]));
      return true;
    } else {
      return false;
    }
  }

  Future<bool> registerCenter(RegisterCenterModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.registerCenter,
      json: model.toJson(),
      returnType: ReturnType.type,
      returnDataFun: (data) => data,
      showLoader: false,
      methodType: MethodType.post,
    );
    if (data != null) {
     CustomToast.showSimpleToast(msg: data["message"]);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> activeAccount(String code, String phone) async {
    Map<String, dynamic> body = {
      "code": code,
      "phone": phone,
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.verifyCode,
      json: body,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    return (data != null);
  }

  Future<bool> resendCode(String phone) async {
    Map<String, dynamic> body = {"phone": phone};
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.resendCode,
      json: body,
      returnType: ReturnType.type,
      showLoader: false,
      returnDataFun: (data) => data,
      methodType: MethodType.post,
    );
    if (data == null) {
      return false;
    } else {
      CustomToast.showSimpleToast(msg: data["message"]);
      return (data["status"]);
    }
  }

  Future<List<DropDownModel>> getSpecializations() async {
    return await GenericHttp<DropDownModel>(context).callApi(
      name: ApiNames.specializations,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      returnDataFun: (data)=> data["data"],
      toJsonFunc: (json) => DropDownModel.fromJson(json),
    ) as List<DropDownModel>;
  }

  Future<List<DropDownModel>> getCenters() async {
    return await GenericHttp<DropDownModel>(context).callApi(
      name: ApiNames.centers,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      returnDataFun: (data)=> data["data"],
      toJsonFunc: (json) => DropDownModel.fromJson(json),
    ) as List<DropDownModel>;
  }

  Future<List<DropDownModel>> getRegisterDoctors() async {
    return await GenericHttp<DropDownModel>(context).callApi(
      name: ApiNames.doctorTipInfo,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      returnDataFun: (data)=> data["data"],
      toJsonFunc: (json) => DropDownModel.fromJson(json),
    ) as List<DropDownModel>;
  }

  Future<dynamic> forgetPassword(String phone) async {
    Map<String, dynamic> body = {
      "phoneOrEmail": "$phone",
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.forgetPassword,
      returnType: ReturnType.type,
      json: body,
      showLoader: false,
      methodType: MethodType.post,
      returnDataFun: (data) => data,
    );
    return data;
  }

  Future<dynamic> resetUserPassword(
      String phoneOrEmail, String newPassword) async {
    Map<String, dynamic> body = {
      "phoneOrEmail": phoneOrEmail,
      "new_password": newPassword,
      "confirmation_password": newPassword,
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.resetPassword,
      returnType: ReturnType.type,
      json: body,
      showLoader: false,
      methodType: MethodType.post,
    );
    return data;
  }

  Future<bool> sendMessage(String? name, String? mail, String? message) async {
    Map<String, dynamic> body = {
      "name": "$name",
      "email": "$mail",
      "comment": "$message",
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.contactUs,
      returnType: ReturnType.type,
      json: body,
      showLoader: false,
      methodType: MethodType.post,
    );
    return (data != null);
  }

  Future<void> logout() async {
    LoadingDialog.showLoadingDialog();
    await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.logout,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    EasyLoading.dismiss().then((value) {
      Storage.clearUserData();
      Phoenix.rebirth(context);
    });
  }
}
