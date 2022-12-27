part of 'LoginImports.dart';

class LoginData {
  // keys
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  // controllers
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController student = TextEditingController();

  // blocs
  final GenericBloc<bool> passwordCubit = GenericBloc(false);

  // methods
  void userLogin(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      String passEn = HelperMethods.convertDigitsToLatin(password.text);
      bool data = await GeneralRepository(context).setUserLogin(phone.text, passEn);
      btnKey.currentState!.animateReverse();
      if(data == true){
        // AutoRouter.of(context).push(BuyerHomeRoute());
        print("=========================>>> true");
      }
    }
  }
}
