part of 'SessionImports.dart';

class SessionData {
  // variables
  String? code;
  StopWatchTimer? stopWatchTimer;

  // blocs
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  // keys
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();
  GenericBloc<String> timeCubit = GenericBloc("0");

  // methods
  void handleStopWatchConfig() {
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
    stopWatchTimer?.setPresetHoursTime(2);
    stopWatchTimer!.onExecute.add(StopWatchExecute.start);
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
        return BuildChangeTimeBottomSheet();
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

}
