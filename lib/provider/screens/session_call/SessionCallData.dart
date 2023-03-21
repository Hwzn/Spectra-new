part of 'SessionCallImports.dart';

class SessionCallData {
  late AgoraClient client;

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

}
