part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginData loginData;

  const BuildLoginButton({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      borderColor: MyColors.primary,
      title: tr(context, 'signIn'),
      onTap: () => loginData.userLogin(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      btnKey: loginData.btnKey,
      margin: const EdgeInsets.only(right: 20, left: 20),
      fontSize: 13,
    );
  }
}
