part of 'SessionWidgetsImports.dart';

class BuildCancelBottomSheet extends StatelessWidget {
  final SessionData sessionData;
  const BuildCancelBottomSheet({Key? key, required this.sessionData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyText(
            title: "Cancel Session",
            color: MyColors.black,
            size: 20,
          ),
          InkWell(
            onTap: ()=> sessionData.onTapCancel(context),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: MyColors.greyWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyText(
                title: "Cancel Session",
                color: MyColors.grey,
                size: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          InkWell(
            onTap: ()=> sessionData.changeTime(context),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: MyColors.greyWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: MyText(
                title: "Change Time",
                color: MyColors.grey,
                size: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          DefaultButton(
            title: "Next",
            margin: const  EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          ),
        ],
      ),
    );
  }
}
