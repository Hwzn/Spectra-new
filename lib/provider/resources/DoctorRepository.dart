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

}
