part of 'UserRepositoryImports.dart';
class UserHttpMethods{
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

}