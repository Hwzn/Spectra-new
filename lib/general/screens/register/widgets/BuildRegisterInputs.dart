part of 'RegisterWidgetsImports.dart';

class BuildRegisterFields extends StatelessWidget {
  final RegisterData registerData;

  const BuildRegisterFields({Key? key, required this.registerData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<LangCubit>().state.locale.languageCode;
    return Form(
      key: registerData.formKey,
      child: Column(
        children: [
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
                registerData.phoneNumber = number;
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  useEmoji: true,
                  leadingPadding: 15
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              initialValue: registerData.phoneNumber,
              textFieldController: registerData.phoneController,
              formatInput: false,
              inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
              validator: (value) => (value)!.validatePhone(context),
            ),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            controller: registerData.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            hint: "Name",
            margin: const EdgeInsets.symmetric(vertical: 7),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            controller: registerData.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(context),
            hint: "E-mail",
            margin: const EdgeInsets.symmetric(vertical: 7),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            controller: registerData.codeController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            hint: "Invitation Code",
            margin: const EdgeInsets.symmetric(vertical: 7),
          ),
          BuildPasswordsBloc(registerData: registerData),
        ],
      ),
    );
  }
}
