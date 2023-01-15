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

  // blocs
  final GenericBloc<int> typeBloc = GenericBloc(1);

  // variables
  DropDownModel? selectedSpecialization;
  DropDownModel? selectedCenter;

  // lists
  List<DropDownModel> specializationList = [
    DropDownModel(id: 0, name: "item 1"),
    DropDownModel(id: 1, name: "item 2"),
    DropDownModel(id: 2, name: "item 3"),
    DropDownModel(id: 3, name: "item 4"),
    DropDownModel(id: 4, name: "item 5"),
  ];

  // methods
  void onRegister(BuildContext context) {
    // AutoRouter.of(context).push(VerifyCodeRoute(email: '', fromRegister: true));
    AutoRouter.of(context).push(ProvHomeRoute());
  }

  // used to update selected specialization in drop down field
  void setSelectISpecialization(DropDownModel? model) {
    selectedSpecialization = model;
  }

  // used to update selected center in drop down field
  void setSelectCenter(DropDownModel? model) {
    selectedCenter = model;
  }
}
