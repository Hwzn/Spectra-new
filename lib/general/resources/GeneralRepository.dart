part of 'GeneralRepoImports.dart';

class GeneralRepository {
  late BuildContext _context;
  late GeneralHttpMethods _generalHttpMethods;

  GeneralRepository(BuildContext context) {
    _context = context;
    _generalHttpMethods = GeneralHttpMethods(_context);
  }

  // auth
  Future<bool> setUserLogin(String phone, String pass, String countryCode) =>
      _generalHttpMethods.userLogin(phone, pass, countryCode);

  Future<bool> registerClient(RegisterModel model) =>
      _generalHttpMethods.registerClient(model);

  Future<bool> activeAccount(String code, String phone) =>
      _generalHttpMethods.activeAccount(code, phone);

  Future<bool> resendCode(String phone) =>
      _generalHttpMethods.resendCode(phone);

  Future<dynamic> forgetPassword(String phone) =>
      _generalHttpMethods.forgetPassword(phone);

  Future<dynamic> resetUserPassword(String phoneOrEmail, String newPassword) =>
      _generalHttpMethods.resetUserPassword(phoneOrEmail, newPassword);

  Future<bool> sendMessage({String? name, String? mail, String? message}) =>
      _generalHttpMethods.sendMessage(name, mail, message);

  Future<void> logOut() => _generalHttpMethods.logout();
}
