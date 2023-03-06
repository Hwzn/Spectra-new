part of 'ReservationsImports.dart';

class ReservationsData {
  // controllers
  late TabController tabController;

  // blocs
  final GenericBloc<int> tabsBloc = GenericBloc(0);
  final GenericBloc<List<ReservationModel>> upcomingBloc = GenericBloc([]);
  final GenericBloc<List<ReservationModel>> previousBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context) async {
    var upcoming = await UserRepository(context).getReservations("upcoming");
    upcomingBloc.onUpdateData(upcoming);
    var prev = await UserRepository(context).getReservations("done");
    previousBloc.onUpdateData(prev);
  }

}