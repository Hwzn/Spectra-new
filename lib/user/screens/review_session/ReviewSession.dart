part of 'ReviewSessionImports.dart';

class ReviewSession extends StatefulWidget {
  final ReservationModel model;
  const ReviewSession({Key? key, required this.model}) : super(key: key);

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
          BuildReservationItem(
            statusColor: Colors.green[700]!,
            ended: true,
            model: widget.model,
          ),
          const BuildSessionDoctorInfo(info: 'info should be here',),
          BuildRateSession(data: reviewSessionData),
          DefaultButton(
            title: "Submit",
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            onTap: ()=> reviewSessionData.submitRate(context, widget.model.id),
          ),
        ],
      ),
    );
  }
}
