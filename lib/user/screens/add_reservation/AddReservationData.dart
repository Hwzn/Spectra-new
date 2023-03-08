part of 'AddReservationImports.dart';

class AddReservationData {
  // blocs
  final GenericBloc<bool> termsBloc = GenericBloc(false);
  final GenericBloc<List<AvailableDayModel>> daysBloc = GenericBloc([]);
  final GenericBloc<List<TimeModel>> timesBloc = GenericBloc([]);

  getDays(List<AvailableDayModel> daysList) {
    daysBloc.onUpdateData(daysList);
    if (daysList.isNotEmpty) {
      daysList.forEach((element) {
        element.selected = false;
      });
      daysList.first.selected = true;
      daysBloc.onUpdateData(daysList);
      var availableTimes = daysBloc.state.data
          .firstWhere((element) => element.selected == true);
      timesBloc.onUpdateData(
        availableTimes.times
      );
    }
  }
}
