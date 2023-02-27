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
          return Form(
            key: provRegisterData.formKey,
            child: Column(
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
                Container(
                  // height: 48,
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      print(number.phoneNumber);
                      print(number.dialCode);
                      provRegisterData.phoneNumber = number;
                    },
                    onInputValidated: (bool value) {
                      print(value);
                    },
                    selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        useEmoji: true,
                        leadingPadding: 15),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    initialValue: provRegisterData.phoneNumber,
                    textFieldController: provRegisterData.phone,
                    formatInput: false,
                    inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    onSaved: (PhoneNumber number) {
                      print('On Saved: $number');
                    },
                    validator: (value) => value?.validatePhone(context),
                  ),
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
                    validate: (value) => value!.noValidate(),
                    hint: "General Information",
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: Column(
                    children: [
                      DropdownTextField<DropDownModel>(
                        dropKey: provRegisterData.specialization,
                        hint: "Specialization",
                        selectedItem: provRegisterData.selectedSpecialization,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        validate: (value) => value.noValidate(),
                        onChange: (DropDownModel? model) =>
                            provRegisterData.setSelectISpecialization(model),
                        useName: true,
                        searchHint: "Search",
                        finData: (data) => provRegisterData.getSpecs(context),
                        enableColor: MyColors.greyWhite,
                        fillColor: MyColors.white,
                      ),
                      DropdownTextField<DropDownModel>(
                        dropKey: provRegisterData.centerName,
                        hint: "Center name if you have",
                        selectedItem: provRegisterData.selectedCenter,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        validate: (value) => value.noValidate(),
                        onChange: (DropDownModel? model) =>
                            provRegisterData.setSelectCenter(model),
                        useName: true,
                        searchHint: "Search",
                        finData: (data) => provRegisterData.getCenters(context),
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
                BuildUploadCv(provRegisterData: provRegisterData, visible: state.data == 1),
                BuildPasswordsView(provRegisterData: provRegisterData),
              ],
            ),
          );
        },
      ),
    );
  }
}
