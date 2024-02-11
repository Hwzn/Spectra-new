part of 'ProvReservWidgetsImports.dart';

class BuildDetailsBottomSheet extends StatelessWidget {
  final ProvReservationsData data;
  final int reservationId;

  const BuildDetailsBottomSheet(
      {Key? key, required this.data, required this.reservationId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: ListView(
        children: [
          MyText(
            title: tr(context, 'fillSessionDetails'),
            color: MyColors.black,
            size: 16,
            alien: TextAlign.center,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: data.detailsController,
            fieldTypes: FieldTypes.rich,
            max: 8,
            focusBorderColor: MyColors.black,
            enableBorderColor: MyColors.black,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value!.validateEmpty(context),
            margin: const EdgeInsets.only(top: 20),
          ),
          DefaultButton(
            title: tr(context, 'save'),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: () => data.fillSessionDetails(context, reservationId),
          ),
          DefaultButton(
            title: tr(context, 'cancel'),
            onTap: () {
              data.detailsController.clear();
              AutoRouter.of(context).pop();
            },
            margin: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 30,
            ),
            color: MyColors.bg,
            textColor: MyColors.grey,
          ),
        ],
      ),
    );
  }
}
