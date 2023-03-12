part of 'SessionWidgetsImports.dart';

class BuildSessionTimer extends StatelessWidget {
  final SessionData sessionData;
  final StopWatchTimer stopWatchTimer;
  final ReservationModel reservationModel;

  const BuildSessionTimer(
      {Key? key,
      required this.sessionData,
      required this.stopWatchTimer,
      required this.reservationModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width,
      height: 165,
      child: InkWell(
        onTap: () => AutoRouter.of(context)
            .push(ReviewSessionRoute(model: reservationModel)),
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: MyColors.greyWhite,
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: BlocBuilder<GenericBloc<String>, GenericState<String>>(
            bloc: sessionData.timeCubit,
            builder: (context, state) {
              if (stopWatchTimer.isRunning) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        title: "Remaining time for the session",
                        color: MyColors.black,
                        size: 12,
                      ),
                      const SizedBox(height: 5),
                      MyText(
                        title: state.data,
                        color: MyColors.black,
                        size: 35,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                      MyText(
                        title: "H      M      S",
                        color: MyColors.black,
                        size: 20,
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
                    title: "Session Ended",
                    color: MyColors.primary,
                    size: 15,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
