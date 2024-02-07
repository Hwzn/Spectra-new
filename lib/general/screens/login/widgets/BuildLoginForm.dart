part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginData loginData;

  const BuildLoginForm({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.formKey,
      child: Column(
        children: [
          // GenericTextField(
          //   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          //   controller: loginData.phone,
          //   fieldTypes: FieldTypes.normal,
          //   type: TextInputType.text,
          //   action: TextInputAction.next,
          //   validate: (value) => value?.validatePhone(context),
          //   label: tr(context, "phone"),
          //   margin: const EdgeInsets.only(top: 20),
          // ),
          Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
                print(number.dialCode);
                loginData.phoneNumber = number;
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
              initialValue: loginData.phoneNumber,
              textFieldController: loginData.phone,
              formatInput: false,
              inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
              validator: (value) => value?.validatePhone(context),
              // validator: (value) => value?.noValidate(),
            ),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: loginData.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                controller: loginData.password,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.visiblePassword,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(context),
                hint: tr(context, "password"),
                enableBorderColor: MyColors.white,
                focusBorderColor: MyColors.white,
                fillColor: MyColors.white,
                margin: const EdgeInsets.only(top: 20),
                suffixIcon: IconButton(
                  onPressed: () =>
                      loginData.passwordCubit.onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                    color: MyColors.grey,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
