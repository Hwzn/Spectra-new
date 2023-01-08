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

  // variables
  String initialCountry = 'EG';
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'EG');

  // methods
  void userLogin(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    // check validation
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();

      // convert arabic numbers to english
      String passEn = HelperMethods.convertDigitsToLatin(password.text);

      // call api
      bool data = await GeneralRepository(context).setUserLogin(phone.text, passEn);
      btnKey.currentState!.animateReverse();

      // navigation action when user is logged in successfully
      if(data == true){
        // AutoRouter.of(context).push(BuyerHomeRoute());
        print("=========================>>> true");
      }

    }
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
    this.phoneNumber = number;
  }

}
