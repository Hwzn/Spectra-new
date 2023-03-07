part of 'ProvUpcomingImports.dart';

class ProvUpcoming extends StatelessWidget {
  const ProvUpcoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        2,
          (index) => MyText(
            title: "Commented widget was here",
            color: MyColors.primary,
            size: 12,
          ),
        // (index) => BuildReservationItem(
        //   status: "Upcoming",
        //   statusColor: MyColors.lightGrey,
        //   fromDoctorHome: true,
        // ),
      ),
    );
  }
}
