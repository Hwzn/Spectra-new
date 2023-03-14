part of 'DoctorRepositoryImports.dart';

class DoctorRepository {
  late BuildContext context;
  late DoctorHttpMethods doctorHttpMethods;

  DoctorRepository(BuildContext context) {
    context = context;
    doctorHttpMethods = DoctorHttpMethods(context);
  }

  Future<WalletModel> getWallet() => doctorHttpMethods.getWallet();

  Future<List<ReservationModel>> getReservations(String status) =>
      doctorHttpMethods.getReservations(status);

  Future<ProvHomeModel> getProvHome() => doctorHttpMethods.getProvHome();

  Future<List<ReviewModel>> getDoctorReviews() =>
      doctorHttpMethods.getDoctorReviews();

  Future<bool> updateDoctorProfile(UpdateDoctorProfileModel model) =>
      doctorHttpMethods.updateDoctorProfile(model);

  Future<bool> updatePrice(String type, String price) =>
      doctorHttpMethods.updatePrice(type, price);

  Future<List<NotificationsModel>> getNotifications() =>
      doctorHttpMethods.getNotifications();

  Future<bool> deleteNotification(String id) =>
      doctorHttpMethods.deleteNotification(id);

  Future<bool> deleteAllNotifications() =>
      doctorHttpMethods.deleteAllNotifications();

}
