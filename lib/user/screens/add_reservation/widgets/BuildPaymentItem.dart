part of 'AddReservationWidgetsImports.dart';

class BuildPaymentItem extends StatelessWidget {
  final String title;
  final String detail;

  const BuildPaymentItem({
    Key? key,
    required this.title,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            title: title,
            color: MyColors.grey,
            size: 12,
          ),
          MyText(
            title: detail,
            color: MyColors.blackOpacity,
            size: 12,
          ),
        ],
      ),
    );
  }
}
