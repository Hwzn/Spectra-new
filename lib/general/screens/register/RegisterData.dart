part of 'RegisterImports.dart';

class RegisterData {
  // blocs
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPassCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  // keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<DropdownSearchState> userDropKey = GlobalKey();

  // controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // variables
  String initialCountry = 'EG';
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'EG', dialCode: '+20');
  var userTypes;
  DropDownModel? selectedUserType;

  // methods



  // get data from api for drop down field
  // Future<List<DropDownModel>> getUserTypes(BuildContext context) async {
  //   var types = await GeneralRepository(context).getUserTypes();
  //   return types;
  // }

  // used to update selected item in user types drop down field
  void setSelectUser(DropDownModel? model) {
    selectedUserType = model;
  }

  Future<void> getImage(BuildContext context) async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  void onRegister(BuildContext context) async {
    // get device id
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // fields validation
    if (formKey.currentState!.validate()) {
      // convert arabic digits to latin
      String phoneEn = HelperMethods.convertDigitsToLatin(phoneController.text);

      // animate button
      btnKey.currentState!.animateForward();

      // add values to the model
      RegisterModel model = RegisterModel(
        email: emailController.text,
        countryCode: phoneNumber.dialCode??'',
        phone: phoneEn,
        invitationCode: codeController.text,
        name: nameController.text,
        password: passwordController.text,
        deviceId: await messaging.getToken(),
        deviceType: Platform.isIOS ? "ios" : "android",
      );

      // call api
      await GeneralRepository(context).registerClient(model);

      // animate button back
      btnKey.currentState!.animateReverse();
    }
  }


}
