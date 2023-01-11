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
      appBar: const DefaultAppBar(title: "Session #44444"),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          BuildReservationItem(
            status: "Complete",
            statusColor: Colors.green[700]!,
            ended: true,
          ),
          const BuildSessionDoctorInfo(),
          const BuildRateSession(),
        ],
      ),
    );
  }
}
