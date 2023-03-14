part of 'ProvProfileImports.dart';

class ProvProfileData {
  // keys
  final GlobalKey<DropdownSearchState> specDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> centerDropKey = GlobalKey();

  // bloc
  final GenericBloc<File?> profileCubit = GenericBloc(null);
  final GenericBloc<bool> loadedBloc = GenericBloc(false);

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
    cv.text = user.cv;
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
      profileCubit.onUpdateData(image);
    }
  }

  // used to update selected center in drop down field
  void setSelectSpec(DropDownModel? model) {
    selectedSpec = model;
  }

  void setSelectCenter(DropDownModel? model) {
    selectedCenter = model;
  }
}
