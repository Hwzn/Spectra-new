part of 'ProvReservationsImports.dart';

class ProvReservationsData {
  // controllers
  late TabController tabController;
  final TextEditingController detailsController = TextEditingController();

  // blocs
  final GenericBloc<int> tabsBloc = GenericBloc(0);
  final GenericBloc<List<ReservationModel>> upcomingBloc = GenericBloc([]);
  final GenericBloc<List<ReservationModel>> previousBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context) async {
    var upcoming = await DoctorRepository(context).getReservations("upcoming");
    upcomingBloc.onUpdateData(upcoming);
    var prev = await DoctorRepository(context).getReservations("done");
    previousBloc.onUpdateData(prev);
  }

  fillSessionDetails(BuildContext context, int reservationId) async {
    var data = await DoctorRepository(context)
        .fillSessionDetails(reservationId, detailsController.text);
    if(data){
      detailsController.clear();
      Navigator.pop(context);
    }
  }

  sessionDetails(BuildContext context, int resId) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return BuildDetailsBottomSheet(data: this, reservationId: resId);
      },
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * .5,
      ),
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }
}
