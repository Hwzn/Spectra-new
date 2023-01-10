part of 'UpcomingTabImports.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BuildReservationItem(
          status: "Upcoming",
          statusColor: MyColors.lightGrey,
        ),
        BuildReservationItem(
          status: "Cancelled",
          statusColor: Colors.red[700]!,
        ),
      ],
    );
  }
}
