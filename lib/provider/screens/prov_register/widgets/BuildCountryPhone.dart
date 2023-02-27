part of 'ProvRegisterWidgetsImports.dart';

class BuildCountryPhone extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  const BuildCountryPhone({Key? key, required this.provRegisterData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
