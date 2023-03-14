part of 'ProvProfileImports.dart';

class ProvProfileData {
  // keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<DropdownSearchState> specDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> centerDropKey = GlobalKey();

  // bloc
  final GenericBloc<File?> imageCubit = GenericBloc(null);
  final GenericBloc<bool> loadedBloc = GenericBloc(false);
  final GenericBloc<List<File>> uploadPdfBloc = GenericBloc([]);

  // variables
  DropDownModel? selectedSpec;
  DropDownModel? selectedCenter;
  var specializations;
  var centers;

  // controllers
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController cv = TextEditingController();

  // methods
  fetchData(BuildContext context) async {
    await initializeData(context);
    loadedBloc.onUpdateData(true);
  }

  initializeData(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    name.text = user.name;
    phone.text = user.phone;
    email.text = user.email;
    cv.text = user.cv ?? '';
    description.text = user.description ?? '';
    if (user.centerId != 0) {
      selectedCenter = DropDownModel(
        id: user.centerId,
        name: user.centerName,
      );
    }
    if (user.specializationId != 0) {
      selectedSpec = DropDownModel(
        id: user.specializationId,
        name: user.specializationName,
      );
    }
  }

  updateProfile(BuildContext context) async {
    if (selectedSpec?.id == null) {
      CustomToast.showSimpleToast(msg: "Please select specialization");
      return;
    }
    btnKey.currentState?.animateForward();
    UpdateDoctorProfileModel model = UpdateDoctorProfileModel(
      phone: phone.text,
      name: name.text,
      email: email.text,
      description: description.text,
      centerId: selectedCenter?.id ?? 0,
      specId: selectedSpec?.id ?? 0,
      cv: uploadPdfBloc.state.data.isNotEmpty
          ? uploadPdfBloc.state.data.first
          : null,
      image: imageCubit.state.data,
    );
    await DoctorRepository(context).updateDoctorProfile(model);
    btnKey.currentState?.animateReverse();
  }

  Future<List<DropDownModel>> getSpecs(BuildContext context) async {
    specializations = await GeneralRepository(context).getSpecializations();
    return specializations;
  }

  Future<List<DropDownModel>> getCenters(BuildContext context) async {
    centers = await GeneralRepository(context).getCenters();
    return centers;
  }

  setProfileImage() async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  // used to update selected center in drop down field
  void setSelectSpec(DropDownModel? model) {
    selectedSpec = model;
  }

  void setSelectCenter(DropDownModel? model) {
    selectedCenter = model;
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
      cv.text = uploadPdfBloc.state.data.first.path;
    }
  }

  removePdf({required BuildContext context}) async {
    uploadPdfBloc.state.data.clear();
    cv.clear();
    uploadPdfBloc.onUpdateData(uploadPdfBloc.state.data);
  }
}
