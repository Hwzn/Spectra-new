part of 'SessionImports.dart';

class Session extends StatefulWidget {
  final bool fromDoctorHome;
  final ReservationModel model;

  const Session({Key? key, this.fromDoctorHome = false, required this.model})
      : super(key: key);

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  SessionData sessionData = SessionData();

  @override
  void initState() {
    sessionData.handleStopWatchConfig(widget.model.dateTime);
    sessionData.fetchData(context, widget.model.doctorDetails.id);
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
                  onPressed: () => AutoRouter.of(context).pop(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: MyColors.white,
                  ),
                ),
              ),
              BuildSessionTimer(
                sessionData: sessionData,
                stopWatchTimer: sessionData.stopWatchTimer ?? StopWatchTimer(),
                reservationModel: widget.model,
              ),
            ],
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                InkWell(
                  onTap: () => AutoRouter.of(context).push(
                      SessionCallRoute(reservationModel: widget.model)),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    alignment: Alignment.center,
                    child: MyText(
                      title: "Join Session Now",
                      color: MyColors.primary,
                      size: 15,
                    ),
                  ),
                ),
                BuildSessionDoctor(model: widget.model.doctorDetails),
                InkWell(
                  onTap: widget.fromDoctorHome
                      ? () => AutoRouter.of(context)
                          .push(PetProfileRoute(id: widget.model.petId))
                      : null,
                  child: BuildSessionPet(
                    image: widget.model.petImage,
                    name: widget.model.petName,
                  ),
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
              if (widget.fromDoctorHome) {
                sessionData.onTapCancel(context, widget.model.id);
              } else {
                sessionData.cancelSession(context, widget.model);
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
