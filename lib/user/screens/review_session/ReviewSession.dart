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
      appBar:
          DefaultAppBar(title: "${tr(context, 'session')} #${widget.model.id}"),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          BuildReservationItem(
            statusColor: widget.model.status == "cancelled"
                ? Colors.red[700]!
                : Colors.green[700]!,
            ended: true,
            model: widget.model,
          ),
          const BuildSessionDoctorInfo(
            info: 'info should be here',
          ),
          BuildRateSession(
            data: reviewSessionData,
            model: widget.model,
          ),
          Visibility(
            visible: !widget.model.reviewBefore,
            child: DefaultButton(
              title: tr(context, 'submit'),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              onTap: () => reviewSessionData.submitRate(
                context,
                widget.model.id,
                widget.model.petId,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
