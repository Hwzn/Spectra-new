part of 'AddReservationWidgetsImports.dart';

class BuildPaymentInfo extends StatelessWidget {
  const BuildPaymentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            title: "Choose time slot",
            color: MyColors.black,
            size: 13,
          ),
          const SizedBox(height: 10),
          const BuildPaymentItem(title: "Amount", detail: "400 SAR"),
          const BuildPaymentItem(title: "Taxes", detail: "0.00 SAR"),
          const Divider(thickness: 1),
          const BuildPaymentItem(title: "Total", detail: "400 SAR"),
        ],
      ),
    );
  }
}
