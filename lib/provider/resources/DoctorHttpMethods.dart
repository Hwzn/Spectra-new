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

}