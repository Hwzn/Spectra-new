part of 'RegisterWidgetsImports.dart';

class BuildRegisterFields extends StatelessWidget {
  final RegisterDate registerDate;

  const BuildRegisterFields({Key? key, required this.registerDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<LangCubit>().state.locale.languageCode;
    return Form(
      key: registerDate.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.firstNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            hint: "Name",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          GenericTextField(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.phoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(context),
            hint: "Phone",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(context),
            hint: "E-mail",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.codeController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            hint: "Invitation Code",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          // BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          //     bloc: registerDate.passwordCubit,
          //     builder: (context, state) {
          //       return GenericTextField(
          //         contentPadding:
          //             const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          //         controller: registerDate.passwordController,
          //         fieldTypes:
          //             !state.data ? FieldTypes.password : FieldTypes.normal,
          //         type: TextInputType.text,
          //         action: TextInputAction.next,
          //         validate: (value) => value?.validatePassword(context),
          //         hint: "Password",
          //         margin: const EdgeInsets.symmetric(vertical: 10),
          //         suffixIcon: IconButton(
          //           onPressed: () =>
          //               registerDate.passwordCubit.onUpdateData(!state.data),
          //           icon: Icon(
          //             !state.data ? Icons.visibility : Icons.visibility_off,
          //             size: 20,
          //             color: MyColors.grey,
          //           ),
          //         ),
          //       );
          //     }),
          // BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          //     bloc: registerDate.passwordCubit,
          //     builder: (context, state) {
          //       return GenericTextField(
          //         contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          //         controller: registerDate.confirmPasswordController,
          //         fieldTypes:
          //             !state.data ? FieldTypes.password : FieldTypes.normal,
          //         type: TextInputType.text,
          //         action: TextInputAction.done,
          //         validate: (value) => value?.validatePasswordConfirm(context, pass: registerDate.passwordController.text),
          //         hint: "Re-enter Password",
          //         margin: const EdgeInsets.symmetric(vertical: 10),
          //         suffixIcon: IconButton(
          //           onPressed: () =>
          //               registerDate.passwordCubit.onUpdateData(!state.data),
          //           icon: Icon(
          //             !state.data ? Icons.visibility : Icons.visibility_off,
          //             size: 20,
          //             color: MyColors.grey,
          //           ),
          //         ),
          //       );
          //     }),
        ],
      ),
    );
  }
}
