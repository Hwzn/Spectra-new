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

}
