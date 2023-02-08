part of 'AccountWidgetsImports.dart';

class BuildSignOutSheet extends StatelessWidget {
  const BuildSignOutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyText(
            title: "Are you sure you want to sign out ?",
            color: MyColors.black,
            size: 16,
          ),
          DefaultButton(
            title: "No",
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: ()=>AutoRouter.of(context).pop(),
          ),
          DefaultButton(
            title: "Yes, Sign Out",
            onTap: ()=> Phoenix.rebirth(context),
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
