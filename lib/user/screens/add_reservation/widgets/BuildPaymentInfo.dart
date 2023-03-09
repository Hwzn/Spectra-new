part of 'AddReservationWidgetsImports.dart';

class BuildPaymentInfo extends StatelessWidget {
  final AddReservationData addReservationData;

  const BuildPaymentInfo({Key? key, required this.addReservationData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<ReservationPricesModel>,
        GenericState<ReservationPricesModel>>(
      bloc: addReservationData.pricesBloc,
      builder: (context, state) {
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
                title: "Payment Information",
                color: MyColors.black,
                size: 13,
              ),
              const SizedBox(height: 10),
              BuildPaymentItem(title: "Amount", detail: "${state.data.sessionPrices} SAR"),
              const BuildPaymentItem(title: "Taxes", detail: "0 SAR"),
              const Divider(thickness: 1),
              BuildPaymentItem(title: "Total", detail: "${state.data.total} SAR"),
            ],
          ),
        );
      },
    );
  }
}
