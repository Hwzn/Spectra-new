part of 'AddReservationWidgetsImports.dart';

class BuildAvailableTime extends StatelessWidget {
  final String title;
  final String detail;
  const BuildAvailableTime({Key? key, required this.title, required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: MyColors.greyWhite,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: title,
            color: MyColors.blackOpacity,
            size: 12,
          ),
          const SizedBox(height: 10),
          BuildDateTimeItem(title: detail),
        ],
      ),
    );
  }
}
