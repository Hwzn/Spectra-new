part of 'AddReservationImports.dart';

class AddReservation extends StatefulWidget {
  const AddReservation({Key? key}) : super(key: key);

  @override
  State<AddReservation> createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
  AddReservationData addReservationData = AddReservationData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Make a reservation"),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          const BuildAvailableTime(
            title: "Available days",
            detail: "Sat 11/12",
          ),
          const BuildAvailableTime(
            title: "Available time slots",
            detail: "5 pm to 6 pm",
          ),
          const BuildReservationType(),
          const BuildPaymentInfo(),
          BuildAcceptTerms(addReservationData: addReservationData),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Make a reservation",
        borderRadius: BorderRadius.circular(15),
        margin: const EdgeInsets.all(20),
        onTap: ()=> AutoRouter.of(context).popAndPush(PaymentRoute()),
      ),
    );
  }
}
