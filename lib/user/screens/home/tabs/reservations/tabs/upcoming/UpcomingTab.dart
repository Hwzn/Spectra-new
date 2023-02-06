part of 'UpcomingTabImports.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        2,
        (index) => BuildReservationItem(
          status: "Upcoming",
          statusColor: MyColors.lightGrey,
        ),
      ),
    );
  }
}
