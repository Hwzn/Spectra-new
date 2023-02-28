part of 'UserRepositoryImports.dart';

class UserRepository{
  late BuildContext context;
  late UserHttpMethods userHttpMethods;

  UserRepository(BuildContext context) {
    context = context;
    userHttpMethods =  UserHttpMethods(context);
  }

  Future<HomeModel> getHome() async => userHttpMethods.getHome();

}