part of 'SessionCallImports.dart';

class SessionCall extends StatefulWidget {
  final ReservationModel reservationModel;

  const SessionCall({
    Key? key,
    required this.reservationModel,
  }) : super(key: key);

  @override
  State<SessionCall> createState() => _SessionCallState();
}

class _SessionCallState extends State<SessionCall> {
  final SessionCallData sessionCallData = SessionCallData();

  @override
  void initState() {
    sessionCallData.initClient(
      widget.reservationModel.tempToken,
      widget.reservationModel.id,
    );
    sessionCallData.initAgora();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AgoraVideoViewer(
            client: sessionCallData.client,
            layoutType: Layout.floating,
            // enableHostControls: true, // Add this to enable host controls
            renderModeType: RenderModeType.renderModeFit,
          ),
          AgoraVideoButtons(
            client: sessionCallData.client,
            addScreenSharing: false, // Add this to enable screen sharing
            onDisconnect: () {
              AutoRouter.of(context).popAndPush(
                  ReviewSessionRoute(model: widget.reservationModel));
            },
          ),
        ],
      ),
    );
  }
}
