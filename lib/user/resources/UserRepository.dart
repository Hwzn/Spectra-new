part of 'UserRepositoryImports.dart';

class UserRepository {
  late BuildContext context;
  late UserHttpMethods userHttpMethods;

  UserRepository(BuildContext context) {
    context = context;
    userHttpMethods = UserHttpMethods(context);
  }

  Future<HomeModel> getHome() async => userHttpMethods.getHome();

  Future<List<DoctorModel>> getDoctorsBySpecId(int id) =>
      userHttpMethods.getDoctorsBySpecId(id);

  Future<List<DoctorModel>> getFavorites() async =>
      userHttpMethods.getFavorites();

  Future<DoctorDetailsModel> getDoctorDetails(int id) =>
      userHttpMethods.getDoctorDetails(id);

  Future<List<ChatModel>> getAllChats() => userHttpMethods.getAllChats();

  Future<bool> updateProfile(UpdateProfileModel model) =>
      userHttpMethods.updateProfile(model);

}
