part of 'UserRepositoryImports.dart';

class UserHttpMethods {
  final BuildContext context;

  UserHttpMethods(this.context);

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<HomeModel> getHome() async {
    return await GenericHttp<HomeModel>(context).callApi(
      name: ApiNames.clientHomePage,
      returnType: ReturnType.model,
      methodType: MethodType.get,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => HomeModel.fromJson(json),
    );
  }

  Future<List<DoctorModel>> getDoctorsBySpecId(int id) async {
    return await GenericHttp<DoctorModel>(context).callApi(
      name: ApiNames.doctorsBySpecializationId,
      returnType: ReturnType.list,
      json: {"specialization_id": id},
      methodType: MethodType.post,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DoctorModel.fromJson(json),
    ) as List<DoctorModel>;
  }

  Future<List<DoctorModel>> getFavorites() async {
    return await GenericHttp<DoctorModel>(context).callApi(
      name: ApiNames.authUserFav,
      returnType: ReturnType.list,
      methodType: MethodType.get,
      showLoader: false,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DoctorModel.fromJson(json),
    ) as List<DoctorModel>;
  }

  Future<DoctorDetailsModel> getDoctorDetails(int id) async {
    return await GenericHttp<DoctorDetailsModel>(context).callApi(
      name: ApiNames.doctorDetailsById,
      json: {"doctor_id": id},
      returnType: ReturnType.model,
      showLoader: false,
      methodType: MethodType.post,
      returnDataFun: (data) => data["data"],
      toJsonFunc: (json) => DoctorDetailsModel.fromJson(json),
    );
  }

}
