part of 'ProvProfileImports.dart';

class ProvProfileData {
  // keys
  final GlobalKey<DropdownSearchState> petCareDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> centerDropKey = GlobalKey();

  // bloc
  final GenericBloc<File?> profileCubit = GenericBloc(null);

  // variables
  DropDownModel? selectedPet;
  DropDownModel? selectedCenter;

  // controllers
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController cv = TextEditingController();

  // lists
  List<DropDownModel> dropList = [
    DropDownModel(id: 0, name: "item 1"),
    DropDownModel(id: 1, name: "item 2"),
    DropDownModel(id: 2, name: "item 3"),
    DropDownModel(id: 3, name: "item 4"),
    DropDownModel(id: 4, name: "item 5"),
  ];

  // methods
  fetchData(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    name.text = user.name;
    phone.text = user.phone;
    email.text = user.email;
  }

  setProfileImage() async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      profileCubit.onUpdateData(image);
    }
  }

  // used to update selected center in drop down field
  void setSelectPet(DropDownModel? model) {
    selectedPet = model;
  }

  void setSelectCenter(DropDownModel? model) {
    selectedCenter = model;
  }

}