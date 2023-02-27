part of 'ForgetPasswordImports.dart';

class ForgetPasswordData {
  // keys
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();

  // controllers
  TextEditingController phone = TextEditingController();

  // blocs
  final GenericBloc<String> phoneCubit = GenericBloc("");

  // methods
  void resetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      var result = await GeneralRepository(context).resendCode(phone.text);
      btnKey.currentState!.animateReverse();
      if (result == true) {
        //  route to reset password
        AutoRouter.of(context).push(
          VerifyCodeRoute(email: phone.text, fromRegister: false),
        );
      }
    }
  }
}
