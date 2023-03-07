part of 'SessionImports.dart';

class Session extends StatefulWidget {
  final bool fromDoctorHome;
  final ReservationModel model;
  const Session({Key? key, this.fromDoctorHome = false, required this.model}) : super(key: key);

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  SessionData sessionData = SessionData();

  @override
  void initState() {
    sessionData.handleStopWatchConfig(widget.model.dateTime);
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await sessionData.stopWatchTimer
        ?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.22 + 175),
              const BuildSessionHeader(),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  onPressed: ()=> AutoRouter.of(context).pop(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: MyColors.white,
                  ),
                ),
              ),
              BuildSessionTimer(
                sessionData: sessionData,
                stopWatchTimer: sessionData.stopWatchTimer?? StopWatchTimer(),
              ),
            ],
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // const BuildSessionDoctor(),
                MyText(
                  title: "Commented widget was here",
                  color: MyColors.primary,
                  size: 12,
                ),
                InkWell(
                  onTap: widget.fromDoctorHome ?
                      ()=> AutoRouter.of(context).push(const PetProfileRoute())
                  : null,
                  child: const BuildSessionPet(),
                ),
                Visibility(
                  visible: !widget.fromDoctorHome,
                  child: const BuildSessionInvite(),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              if(widget.fromDoctorHome){
                sessionData.onTapCancel(context);
              } else {
                sessionData.cancelSession(context);
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: MyText(
                title: "Cancel Session",
                color: MyColors.grey,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
