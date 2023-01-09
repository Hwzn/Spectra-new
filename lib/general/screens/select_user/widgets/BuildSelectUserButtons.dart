part of 'SelectUserWidgetsImports.dart';

class BuildSelectUserButtons extends StatelessWidget {
  final SelectUserData selectUserData;

  const BuildSelectUserButtons({Key? key, required this.selectUserData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          LoadingButton(

              title: "مدير",
              onTap: () => selectUserData.onSelectManager(context),
              color: MyColors.primary,
              textColor: MyColors.white,
              btnKey: selectUserData.btnKey1,
              margin: const EdgeInsets.symmetric(vertical: 10),
              fontSize: 14),
          LoadingButton(

              title: "موظف",
              onTap: () => selectUserData.onSelectUser(context),
              color: MyColors.primary,
              textColor: MyColors.white,
              btnKey: selectUserData.btnKey2,
              margin: const EdgeInsets.symmetric(vertical: 10),
              fontSize: 14),
        ],
      ),
    );
  }
}
