part of 'SessionWidgetsImports.dart';

class BuildCancelBottomSheet extends StatelessWidget {
  final SessionData sessionData;
  final ReservationModel model;

  const BuildCancelBottomSheet(
      {Key? key, required this.sessionData, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyText(
            title: tr(context, 'cancelSession'),
            color: MyColors.black,
            size: 20,
          ),
          InkWell(
            onTap: () => sessionData.onTapCancel(context, model.id),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: MyColors.greyWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyText(
                title: tr(context, 'cancelSession'),
                color: MyColors.grey,
                size: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          InkWell(
            onTap: () => sessionData.changeTime(context, model),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: MyColors.greyWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyText(
                title: tr(context, 'changeTime'),
                color: MyColors.grey,
                size: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          DefaultButton(
            title: tr(context, 'next'),
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          ),
        ],
      ),
    );
  }
}
