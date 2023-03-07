part of 'ReviewSessionImports.dart';

class ReviewSession extends StatefulWidget {
  const ReviewSession({Key? key}) : super(key: key);

  @override
  State<ReviewSession> createState() => _ReviewSessionState();
}

class _ReviewSessionState extends State<ReviewSession> {
  ReviewSessionData reviewSessionData = ReviewSessionData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Session #44444"),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          // BuildReservationItem(
          //   statusColor: Colors.green[700]!,
          //   ended: true,
          // ),
          MyText(
            title: "Commented widget was here",
            color: MyColors.primary,
            size: 12,
          ),
          const BuildSessionDoctorInfo(info: 'info should be here',),
          const BuildRateSession(),
          DefaultButton(
            title: "Submit",
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          ),
        ],
      ),
    );
  }
}
