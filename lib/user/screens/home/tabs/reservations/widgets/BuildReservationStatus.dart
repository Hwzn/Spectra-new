part of 'ReservationsWidgetsImports.dart';

class BuildReservationStatus extends StatelessWidget {
  final String status;
  final Color color;

  const BuildReservationStatus(
      {Key? key, required this.status, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: MyText(
        title: status,
        color: MyColors.white,
        size: 10,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}
