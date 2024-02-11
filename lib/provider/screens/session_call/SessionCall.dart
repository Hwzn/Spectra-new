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
    sessionCallData.getRemainingTime(context, widget.reservationModel);
    // sessionCallData.handleStopWatchConfig(context, widget.reservationModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: sessionCallData.loadingBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Stack(
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
                  onDisconnect: () => sessionCallData.onDisconnect(
                      context, widget.reservationModel),
                ),
                Positioned(
                  top: 50,
                  right: 30,
                  left: 30,
                  child: BlocBuilder<GenericBloc<String>, GenericState<String>>(
                    bloc: sessionCallData.timeCubit,
                    builder: (context, state) {
                      if (sessionCallData.stopWatchTimer!.isRunning) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                title: tr(context, 'remainingTime'),
                                color: Colors.red,
                                size: 9,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                              MyText(
                                title: state.data,
                                color: Colors.red,
                                size: 13,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          alignment: Alignment.center,
                          child: MyText(
                            title: tr(context, 'sessionEnded'),
                            color: MyColors.primary,
                            size: 15,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
