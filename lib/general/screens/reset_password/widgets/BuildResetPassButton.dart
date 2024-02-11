part of 'ResetPasswordWidgetsInputs.dart';

class BuildResetPasswordButton extends StatelessWidget {
  final String email;
  final String code;
  final ResetPasswordData resetPasswordData;

  const BuildResetPasswordButton(
      {Key? key,
      required this.resetPasswordData,
      required this.email,
      required this.code})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      borderColor: MyColors.primary,
      title: tr(context, 'updatePassword'),
      onTap: () => resetPasswordData.onResetPassword(context, email),
      color: MyColors.primary,
      textColor: MyColors.white,
      btnKey: resetPasswordData.btnKey,
      margin: const EdgeInsets.only(top: 40),
      fontSize: 13,
    );
  }
}
