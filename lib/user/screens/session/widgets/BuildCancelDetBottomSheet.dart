part of 'SessionWidgetsImports.dart';

class BuildCancelDetBottomSheet extends StatelessWidget {
  const BuildCancelDetBottomSheet({Key? key}) : super(key: key);

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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: MyText(
              title: "By cancelling session you will lose refund",
              color: MyColors.grey,
              size: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          DefaultButton(
            title: "Cancel Session",
            color: MyColors.greyWhite,
            textColor: MyColors.grey,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            onTap: ()=>AutoRouter.of(context).pop(),
          ),
          DefaultButton(
            title: "Go Back",
            onTap: ()=>AutoRouter.of(context).pop(),
            margin: const EdgeInsets.only(
              top: 10,
              right: 20,
              left: 20,
              bottom: 30,
            ),
          ),
        ],
      ),
    );
  }
}
