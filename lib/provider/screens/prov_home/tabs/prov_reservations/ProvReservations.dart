part of 'ProvReservationsImports.dart';

class ProvReservations extends StatefulWidget {
  const ProvReservations({Key? key}) : super(key: key);

  @override
  State<ProvReservations> createState() => _ProvReservationsState();
}

class _ProvReservationsState extends State<ProvReservations> {
  ProvReservationsData provReservationsData = ProvReservationsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "My Reservations",
        showLeading: false,
      ),
    );
  }
}
