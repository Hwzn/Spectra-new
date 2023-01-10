part of 'SessionImports.dart';

class Session extends StatefulWidget {
  const Session({Key? key}) : super(key: key);

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
              children: const [
                BuildSessionDoctor(),
                BuildSessionPet(),
                BuildSessionInvite(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: MyText(
              title: "Cancel Session",
              color: MyColors.grey,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
