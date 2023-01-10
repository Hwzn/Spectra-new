part of 'PreviousTabImports.dart';

class PreviousTab extends StatelessWidget {
  const PreviousTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BuildReservationItem(
          status: "Complete",
          statusColor: Colors.green[700]!,
          ended: true,
        ),
        BuildReservationItem(
          status: "Cancelled",
          statusColor: Colors.red[700]!,
          ended: true,
        ),
      ],
    );
  }
}
