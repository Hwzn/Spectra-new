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
            title: tr(context, 'confirmSignOut'),
            color: MyColors.black,
            size: 16,
          ),
          DefaultButton(
            title: tr(context, 'no'),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: ()=>AutoRouter.of(context).pop(),
          ),
          DefaultButton(
            title: "${tr(context, 'yes')}, ${tr(context, 'signOut')}",
            onTap: ()=> GeneralRepository(context).logOut(),
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
