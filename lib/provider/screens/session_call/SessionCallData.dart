part of 'SessionCallImports.dart';

class SessionCallData {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "60b8cd5b206c4a0cb1864d876c6f87f5",
      channelName: "test",
      tempToken: '007eJxTYIhh9nq191aPYfn6imk9emqyQrOuT5x3JMZ/o4jO5a7lKTsUGMwMkiySU0yTjAzMkk0SDZKTDC3MTFIszM2SzdIszNNM78+TTGkIZGQ4KHqdhZEBAkF8FoaS1OISBgYANBMfag==',
      username: "aya",
    ),
    enabledPermission: [Permission.camera, Permission.microphone],
  );
}