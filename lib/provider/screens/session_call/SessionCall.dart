part of 'SessionCallImports.dart';

class SessionCall extends StatefulWidget {
  // final int reservationId;

  const SessionCall({
    Key? key,
    // required this.reservationId,
  }) : super(key: key);

  @override
  State<SessionCall> createState() => _SessionCallState();
}

class _SessionCallState extends State<SessionCall> {
  final SessionCallData sessionCallData = SessionCallData();

  @override
  void initState() {
    initAgora();
    super.initState();
  }

  void initAgora() async {
    await sessionCallData.client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AgoraVideoViewer(
            client: sessionCallData.client,
            layoutType: Layout.floating,
            enableHostControls: true, // Add this to enable host controls
            showNumberOfUsers: true,
            renderModeType: RenderModeType.renderModeFit,

          ),
          AgoraVideoButtons(
            client: sessionCallData.client,
            addScreenSharing: false, // Add this to enable screen sharing
          ),
        ],
      ),
    );
  }
}
