part of 'ProvRegisterWidgetsImports.dart';

class BuildProvRegisterInputs extends StatelessWidget {
  final ProvRegisterData provRegisterData;

  const BuildProvRegisterInputs({Key? key, required this.provRegisterData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
        bloc: provRegisterData.typeBloc,
        builder: (context, state) {
          return Column(
            children: [
              GenericTextField(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                controller: provRegisterData.name,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(context),
                hint: state.data == 1 ? "Name" : "Center Name",
                margin: const EdgeInsets.symmetric(vertical: 10),
              ),
              GenericTextField(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                controller: provRegisterData.phone,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.phone,
                action: TextInputAction.next,
                validate: (value) => value!.validatePhone(context),
                hint: "Phone Number",
                margin: const EdgeInsets.symmetric(vertical: 10),
              ),
              GenericTextField(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                controller: provRegisterData.email,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.emailAddress,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmail(context),
                hint: "E-mail",
                margin: const EdgeInsets.symmetric(vertical: 10),
              ),
              Visibility(
                visible: state.data == 1,
                replacement: GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: provRegisterData.generalInfo,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(context),
                  hint: "General Information",
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                child: Column(
                  children: [
                    DropdownTextField<DropDownModel>(
                      dropKey: provRegisterData.specialization,
                      hint: "Specialization",
                      // selectedItem: provRegisterData.selectedSpecialization,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      validate: (value) => value.noValidate(),
                      onChange: (DropDownModel? model) =>
                          provRegisterData.setSelectISpecialization(model),
                      useName: true,
                      searchHint: "Search",
                      data: provRegisterData.specializationList,
                      enableColor: MyColors.greyWhite,
                      fillColor: MyColors.white,
                    ),
                    DropdownTextField<DropDownModel>(
                      dropKey: provRegisterData.centerName,
                      hint: "Center name if you have",
                      // selectedItem: provRegisterData.selectedCenter,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      validate: (value) => value.noValidate(),
                      onChange: (DropDownModel? model) =>
                          provRegisterData.setSelectCenter(model),
                      useName: true,
                      searchHint: "Search",
                      data: provRegisterData.specializationList,
                      enableColor: MyColors.greyWhite,
                      fillColor: MyColors.white,
                    ),
                  ],
                ),
              ),
              GenericTextField(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                controller: provRegisterData.invCode,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(context),
                hint: "Invitation Code",
                margin: const EdgeInsets.symmetric(vertical: 10),
              ),
              Visibility(
                visible: state.data == 1,
                replacement: GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: provRegisterData.cv,
                  fieldTypes: FieldTypes.clickable,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(context),
                  hint: "Add Doctors",
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: Container(
                    width: 20,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColors.primary.withOpacity(0.9),
                    ),
                    child: Icon(
                      Icons.add,
                      color: MyColors.white,
                    ),
                  ),
                ),
                child: GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: provRegisterData.cv,
                  fieldTypes: FieldTypes.clickable,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(context),
                  hint: "Upload CV",
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: Container(
                    width: 20,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyColors.primary.withOpacity(0.9),
                    ),
                    child: Icon(
                      Icons.cloud_upload_sharp,
                      color: MyColors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
