part of 'forget_password_widgets_imports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  final ForgetPasswordData forgetPasswordData;

  const BuildForgetPasswordButton({Key? key, required this.forgetPasswordData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      borderColor: MyColors.primary,
      title: "Reset Password",
      onTap: () => forgetPasswordData.resetPassword(context),
      color: MyColors.primary,
      textColor: MyColors.white,
      btnKey: forgetPasswordData.btnKey,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    );
  }
}
