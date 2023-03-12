part of 'SessionImports.dart';

class SessionData {
  // variables
  String? code;
  StopWatchTimer? stopWatchTimer;

  // blocs
  final GenericBloc<bool> codeCubit = GenericBloc(false);
  final GenericBloc<List<AvailableDayModel>> daysBloc = GenericBloc([]);
  final GenericBloc<List<TimeModel>> timesBloc = GenericBloc([]);

  // keys
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();
  GenericBloc<String> timeCubit = GenericBloc("0");

  // methods
  fetchData(BuildContext context, int doctorId) async {
    var data = await UserRepository(context).getAvailableDays(doctorId);
    if(data != null) {
      daysBloc.onUpdateData(data);
      var blocData = daysBloc.state.data;
      if(blocData.isNotEmpty){
        blocData.first.selected = true;
        daysBloc.onUpdateData(blocData);
        timesBloc.onUpdateData(blocData.first.times);
      }
    }
  }

  void handleStopWatchConfig(String date) async {
    var hours = getDaysLeft(date);
    stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      onChange: (value) {
        final displayTime = StopWatchTimer.getDisplayTime(
          value,
          milliSecond: false,
          hours: true,
          second: true,
        );
        timeCubit.onUpdateData(displayTime);
      },
    );
    stopWatchTimer?.setPresetHoursTime(hours);
    stopWatchTimer!.onExecute.add(StopWatchExecute.start);
  }

  getDaysLeft(String date) {
    DateFormat dateFormat = DateFormat("yyy-MM-dd HH:mm:ss");
    DateTime targetDate = dateFormat.parse(date);
    DateTime currentDate = DateTime.now();
    int difference = targetDate.difference(currentDate).inHours;
    print("difference: $difference");
    return difference;
  }

  cancelSession(BuildContext context) {
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildCancelBottomSheet(sessionData: this);
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

  // when tapping cancel button in the cancel bottom sheet
  onTapCancel(BuildContext context) {
    // close first cancel dialog
    // Navigator.pop(context);
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildCancelDetBottomSheet();
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

  // when tapping change time button in the cancel bottom sheet
  changeTime(BuildContext context) {
    // close the dialog
    Navigator.pop(context);
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildChangeTimeBottomSheet(sessionData: this);
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

  selectDay(int index) {
    daysBloc.state.data.forEach((element) {
      element.selected = false;
    });
    daysBloc.state.data[index].selected = true;
    daysBloc.onUpdateData(daysBloc.state.data);
    timesBloc.onUpdateData(daysBloc.state.data[index].times);
  }

  selectTimes(int index) {
    timesBloc.state.data.forEach((element) {
      element.selected = false;
    });
    timesBloc.state.data[index].selected = true;
    timesBloc.onUpdateData(timesBloc.state.data);
    print("${timesBloc.state.data[index].id}");
  }
}
