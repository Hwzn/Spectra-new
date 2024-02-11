part of 'RegisterWidgetsImports.dart';

class BuildRegisterButton extends StatelessWidget {
  final RegisterData registerDate;

  const BuildRegisterButton({Key? key, required this.registerDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      borderColor: MyColors.primary,
      title: tr(context, 'signUp'),
      onTap: () => registerDate.onRegister(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      btnKey: registerDate.btnKey,
      fontSize: 13,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    );
  }
}
