part of 'SessionCallImports.dart';

class SessionCallData {
  // variables
  late AgoraClient client;
  int time = 0;
  StopWatchTimer? stopWatchTimer;

  // blocs
  final GenericBloc<String> timeCubit = GenericBloc("0");
  final GenericBloc<bool> loadingBloc = GenericBloc(false);

  // methods

  initClient(String tempToken, int reservationId) {
    client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: "60b8cd5b206c4a0cb1864d876c6f87f5",
        channelName: "test 2",
        tempToken: tempToken,
        username: "",
        screenSharingEnabled: true,
        rtmUid: "$reservationId",
        uid: reservationId,
      ),
      enabledPermission: [Permission.camera, Permission.microphone],
    );
  }

  void initAgora() async {
    await client.initialize();
  }

  getRemainingTime(BuildContext context, ReservationModel model) async {
    int data = await UserRepository(context).getRemainingTime(model.id);
    time = data;
    handleStopWatchConfig(context, model);
    if (data <= 0) {
      CustomToast.showSimpleToast(msg: "Time out");
      AutoRouter.of(context).popAndPush(ReviewSessionRoute(model: model));
    }
    loadingBloc.onUpdateData(true);
  }

  onDisconnect(BuildContext context, ReservationModel model,
      {bool? timeOut}) async {
    if (timeOut == true) {
      CustomToast.showSimpleToast(msg: "Time out");
      AutoRouter.of(context).popAndPush(ReviewSessionRoute(model: model));
    } else {
      // stopWatchTimer!.onExecute.add(StopWatchExecute.stop);
      CustomToast.showSimpleToast(msg: "Session Ended");
      AutoRouter.of(context).popAndPush(ReviewSessionRoute(model: model));
    }
  }

  void handleStopWatchConfig(
      BuildContext context, ReservationModel model) async {
    var minutes = time;
    stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      onChange: (value) {
        final displayTime = StopWatchTimer.getDisplayTime(
          value,
          milliSecond: false,
          hours: false,
          minute: true,
          second: true,
        );
        timeCubit.onUpdateData(displayTime);
        print(timeCubit.state.data);
        if (timeCubit.state.data == "00:01") {
          stopWatchTimer!.onExecute.add(StopWatchExecute.stop);
          print("========>>>> ended");
          onDisconnect(context, model, timeOut: true);
        }
      },
    );
    stopWatchTimer?.setPresetMinuteTime(minutes);
    stopWatchTimer!.onExecute.add(StopWatchExecute.start);
  }
}
