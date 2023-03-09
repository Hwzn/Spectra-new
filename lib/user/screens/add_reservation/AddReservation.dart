part of 'AddReservationImports.dart';

class AddReservation extends StatefulWidget {
  final List<AvailableDayModel> daysList;
  final num sessionPrice;
  final int doctorId;

  const AddReservation(
      {Key? key, required this.daysList, required this.sessionPrice, required this.doctorId})
      : super(key: key);

  @override
  State<AddReservation> createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
  AddReservationData addReservationData = AddReservationData();

  @override
  void initState() {
    addReservationData.fetchData(context, widget.daysList);
    addReservationData.sessionPrice = widget.sessionPrice;
    addReservationData.doctorId = widget.doctorId;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Make a reservation"),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          BuildAvailableDays(addReservationData: addReservationData),
          BuildAvailableTime(addReservationData: addReservationData),
          BuildReservationType(addReservationData: addReservationData),
          BuildReservationPets(addReservationData: addReservationData),
          BuildPaymentInfo(addReservationData: addReservationData),
          BuildAcceptTerms(addReservationData: addReservationData),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Make a reservation",
        borderRadius: BorderRadius.circular(15),
        margin: const EdgeInsets.all(20),
        onTap: () => addReservationData.addReservation(context),
      ),
    );
  }
}
