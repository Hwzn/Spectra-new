part of 'RegisterImports.dart';

class RegisterDate {
  // blocs
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  // keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<DropdownSearchState> userDropKey = GlobalKey();

  // controllers
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  //
  var userTypes;
  DropDownModel? selectedUserType;

  // methods



  // get data from api for drop down field
  Future<List<DropDownModel>> getUserTypes(BuildContext context) async {
    var types = await GeneralRepository(context).getUserTypes();
    return types;
  }

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

  void onRegister(BuildContext context) {
    AutoRouter.of(context).push(VerifyCodeRoute(email: ''));
  }

  // void onRegister(BuildContext context) async {
  //   // get device id
  //   // FirebaseMessaging messaging = FirebaseMessaging.instance;
  //
  //   // check if terms are accepted
  //   if (!termCubit.state.data) {
  //     CustomToast.showSimpleToast(msg: "برجاء الموافقة على الشروط والاحكام");
  //     return;
  //   }
  //
  //   // fields validation
  //   if (formKey.currentState!.validate()) {
  //     // convert arabic digits to latin
  //     String phoneEn = HelperMethods.convertDigitsToLatin(phoneController.text);
  //
  //     // animate button
  //     btnKey.currentState!.animateForward();
  //
  //     // add values to the model
  //     RegisterModel model = RegisterModel(
  //       firstName: firstNameController.text,
  //       lastName: lastNameController.text,
  //       userType: selectedUserType?.id ?? 0,
  //       email: emailController.text,
  //       job: jobController.text,
  //       phone: phoneEn,
  //       password: passwordController.text,
  //       confirmPassword: confirmPasswordController.text,
  //       deviceId: "test device id",
  //       deviceType: Platform.isIOS ? "ios" : "android",
  //     );
  //
  //     // call api
  //     await GeneralRepository(context).register(model);
  //
  //     // animate button back
  //     btnKey.currentState!.animateReverse();
  //   }
  // }


}
