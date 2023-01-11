part of 'PaymentImports.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  PaymentData paymentData = PaymentData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Payment"),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(Res.logo, height: 100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.lock),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: MyText(
                  title: "Secure Payment",
                  color: MyColors.blackOpacity,
                  size: 12,
                ),
              ),
            ],
          ),
          BuildCardDetails(paymentData: paymentData),
          const BuildPaymentDetails(),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Pay",
        borderRadius: BorderRadius.circular(15),
        margin: const EdgeInsets.all(20),
        onTap: ()=> AutoRouter.of(context).pop(),
      ),
    );
  }
}
