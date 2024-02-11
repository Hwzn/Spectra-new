part of 'PaymentWidgetsImports.dart';

class BuildPaymentDetails extends StatelessWidget {
  const BuildPaymentDetails({Key? key}) : super(key: key);

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
            title: tr(context, 'paymentDetails'),
            color: MyColors.black,
            size: 13,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: MyText(
              title: tr(context, 'payFullFees'),
              color: MyColors.grey,
              size: 12,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: MyText(
              title: "400 ${tr(context, 'sar')}",
              color: MyColors.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
