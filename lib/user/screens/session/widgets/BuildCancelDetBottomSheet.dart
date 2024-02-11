part of 'SessionWidgetsImports.dart';

class BuildCancelDetBottomSheet extends StatelessWidget {
  final SessionData sessionData;
  final int resId;
  const BuildCancelDetBottomSheet({Key? key, required this.sessionData, required this.resId}) : super(key: key);

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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: MyText(
              title: tr(context, 'cancelWarning'),
              color: MyColors.grey,
              size: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          DefaultButton(
            title: tr(context, 'cancelSession'),
            color: MyColors.greyWhite,
            textColor: MyColors.grey,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            onTap: ()=> sessionData.onCancelSession(context, resId),
          ),
          DefaultButton(
            title: tr(context, 'goBack'),
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
