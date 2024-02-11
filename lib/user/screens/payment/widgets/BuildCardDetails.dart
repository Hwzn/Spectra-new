part of 'PaymentWidgetsImports.dart';

class BuildCardDetails extends StatelessWidget {
  final PaymentData paymentData;

  const BuildCardDetails({Key? key, required this.paymentData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
        children: [
          BuildProfileInputItem(
            title: "${tr(context, 'cardNumber')} *",
            hint: "XXXX - XXXX - XXXX - XXXX",
            controller: paymentData.cardNumber,
            validate: (value) => value!.validateEmpty(context),
            textInputType: TextInputType.number,
            fieldMargin: const EdgeInsets.only(top: 5, bottom: 10),
            fillColor: MyColors.greyWhite,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: BuildProfileInputItem(
                  title: "${tr(context, 'endingDate')} *",
                  hint: "dd/yy",
                  controller: paymentData.endDate,
                  validate: (value) => value!.validateEmpty(context),
                  textInputType: TextInputType.text,
                  fieldMargin: const EdgeInsets.only(top: 5, bottom: 10),
                  fillColor: MyColors.greyWhite,
                ),
              ),
              Expanded(
                flex: 1,
                child: BuildProfileInputItem(
                  title: "CCV *",
                  hint: "***",
                  controller: paymentData.ccv,
                  validate: (value) => value!.validateEmpty(context),
                  textInputType: TextInputType.number,
                  fieldMargin: const EdgeInsets.only(top: 5, bottom: 10),
                  fillColor: MyColors.greyWhite,
                ),
              ),
            ],
          ),
          BuildProfileInputItem(
            title: "${tr(context, 'cardHolderNumber')} *",
            hint: tr(context, 'enterCardHolderNumber'),
            controller: paymentData.cardHolderNumber,
            validate: (value) => value!.validateEmpty(context),
            textInputType: TextInputType.number,
            fieldMargin: const EdgeInsets.only(top: 5, bottom: 10),
            fillColor: MyColors.greyWhite,
          ),
        ],
      ),
    );
  }
}
