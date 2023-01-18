part of 'SessionImports.dart';

class Session extends StatefulWidget {
  final bool fromDoctorHome;

  const Session({Key? key, this.fromDoctorHome = false}) : super(key: key);

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  SessionData sessionData = SessionData();

  @override
  void initState() {
    sessionData.handleStopWatchConfig();
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
              BuildSessionTimer(
                sessionData: sessionData,
                stopWatchTimer: sessionData.stopWatchTimer!,
              ),
            ],
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const BuildSessionDoctor(),
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
            onTap: () => AutoRouter.of(context).pop(),
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
