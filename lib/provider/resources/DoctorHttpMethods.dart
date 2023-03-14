part of 'DoctorRepositoryImports.dart';

class DoctorHttpMethods {
  final BuildContext context;

  DoctorHttpMethods(this.context);

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<WalletModel> getWallet() async {
    return await GenericHttp<WalletModel>(context).callApi(
      name: ApiNames.authUserWallet,
      returnType: ReturnType.model,
      methodType: MethodType.get,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => WalletModel.fromJson(json),
    );
  }

  Future<List<ReservationModel>> getReservations(String status) async {
    return await GenericHttp<ReservationModel>(context).callApi(
      name: ApiNames.doctorReservations,
      returnType: ReturnType.list,
      json: {"status": status},
      methodType: MethodType.post,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => ReservationModel.fromJson(json),
    ) as List<ReservationModel>;
  }

  Future<ProvHomeModel> getProvHome() async {
    return await GenericHttp<ProvHomeModel>(context).callApi(
      name: ApiNames.doctorHome,
      returnType: ReturnType.model,
      methodType: MethodType.get,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => ProvHomeModel.fromJson(json),
    );
  }

  Future<List<ReviewModel>> getDoctorReviews() async {
    return await GenericHttp<ReviewModel>(context).callApi(
      name: ApiNames.authDoctorReviews,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      showLoader: false,
      returnDataFun: (data) => data["data"]["reviews"],
      toJsonFunc: (json) => ReviewModel.fromJson(json),
    ) as List<ReviewModel>;
  }

  Future<bool> updateDoctorProfile(UpdateDoctorProfileModel model) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.updateDoctorAcc,
      json: model.toJson(),
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    if (data != null) {
      UserModel? user = context.read<UserCubit>().state.model;
      user = UserModel.fromJson(data["data"]["user"]);
      Storage.saveUserData(user);
      user.token = GlobalState.instance.get("token");
      context.read<UserCubit>().onUpdateUserData(user);
      CustomToast.showSimpleToast(msg: data["message"]);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> updatePrice(String type, String price) async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.updatePrice,
      json: {
        "type": type,
        "price": price,
      },
      returnType: ReturnType.type,
      methodType: MethodType.post,
    );
    return data != null;
  }

}