part of 'ProvRegisterImports.dart';

class ProvRegisterData {
  // keys
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<DropdownSearchState> specialization = GlobalKey();
  final GlobalKey<DropdownSearchState> centerName = GlobalKey();

  // controllers
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController invCode = TextEditingController();
  final TextEditingController generalInfo = TextEditingController();
  final TextEditingController cv = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();

  // blocs
  final GenericBloc<int> typeBloc = GenericBloc(1);
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPassCubit = GenericBloc(false);
  final GenericBloc<List<File>> uploadPdfBloc = GenericBloc([]);
  final GenericBloc<List<DropDownModel>> doctorsBloc = GenericBloc([]);
  final GenericBloc<List<DropDownModel>> chosenDoctorsBloc = GenericBloc([]);

  // variables
  DropDownModel? selectedSpecialization;
  DropDownModel? selectedCenter;
  var specializations;
  var centers;
  String initialCountry = 'EG';
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'EG', dialCode: '+20');
  List<int> doctorsIds = [];

  // methods
  getDoctors(BuildContext context) async {
    var data = await GeneralRepository(context).getRegisterDoctors();
    doctorsBloc.onUpdateData(data);
  }

  void onRegister(BuildContext context) async {
    // convert arabic digits to latin
    String phoneEn = HelperMethods.convertDigitsToLatin(phone.text);

    // animate button
    btnKey.currentState!.animateForward();

    if (typeBloc.state.data == 1) {
      // add values to the model
      RegisterDoctorModel model = RegisterDoctorModel(
          email: email.text,
          countryCode: phoneNumber.dialCode ?? '',
          phone: phoneEn,
          invitationCode: invCode.text,
          name: name.text,
          password: pass.text,
          specializationId: selectedSpecialization?.id ?? 0,
          centerId: selectedCenter?.id ?? 0,
          cv: uploadPdfBloc.state.data.elementAt(0));
      // call api
      await GeneralRepository(context).registerDoctor(model);
    } else {
      // add values to the model
      RegisterCenterModel model = RegisterCenterModel(
        email: email.text,
        countryCode: phoneNumber.dialCode ?? '',
        phone: phoneEn,
        invitationCode: invCode.text,
        name: name.text,
        details: generalInfo.text,
        doctorsIds: doctorsIds,
      );
      // call api
      var result = await GeneralRepository(context).registerCenter(model);
      if(result == true){
        AutoRouter.of(context).pop();
      }
    }

    // animate button back
    btnKey.currentState!.animateReverse();
  }

  // used to update selected specialization in drop down field
  void setSelectISpecialization(DropDownModel? model) {
    selectedSpecialization = model;
  }

  // used to update selected center in drop down field
  void setSelectCenter(DropDownModel? model) {
    selectedCenter = model;
  }

  Future<List<DropDownModel>> getSpecs(BuildContext context) async {
    specializations = await GeneralRepository(context).getSpecializations();
    return specializations;
  }

  Future<List<DropDownModel>> getCenters(BuildContext context) async {
    centers = await GeneralRepository(context).getCenters();
    return centers;
  }

  uploadPdf() async {
    FilePickerResult? file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
    );
    if (file != null) {
      List<File> files = file.paths.map((path) => File(path!)).toList();
      uploadPdfBloc.state.data.addAll(files);
      uploadPdfBloc.onUpdateData(uploadPdfBloc.state.data);
    } else {
      // User canceled the picker
    }
  }

  removePdf({required BuildContext context}) async {
    uploadPdfBloc.state.data.clear();
    uploadPdfBloc.onUpdateData(uploadPdfBloc.state.data);
  }

  showDoctors(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildDoctorsBottomSheet(provRegisterData: this);
      },
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * .7),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }

  chooseDoctor(BuildContext context, DropDownModel model) {
    chosenDoctorsBloc.state.data.add(model);
    chosenDoctorsBloc.onUpdateData(chosenDoctorsBloc.state.data);
    doctorsIds.add(model.id ?? 0);
    CustomToast.showSimpleToast(msg: "Added Successfully");
  }

  removeDoctor(BuildContext context, DropDownModel model) {
    chosenDoctorsBloc.state.data.remove(model);
    chosenDoctorsBloc.onUpdateData(chosenDoctorsBloc.state.data);
    doctorsIds.remove(model.id ?? 0);
    CustomToast.showSimpleToast(msg: "Removed");
  }
}
