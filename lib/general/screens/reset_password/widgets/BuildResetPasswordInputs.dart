part of 'ResetPasswordWidgetsInputs.dart';

class BuildResetPasswordInputs extends StatelessWidget {
  final ResetPasswordData resetPasswordData;

  const BuildResetPasswordInputs({Key? key, required this.resetPasswordData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: resetPasswordData.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: resetPasswordData.password,
            validate: (value) => value?.validatePassword(context),
            hint: "New Password",
            margin: const EdgeInsets.only(top: 20),
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value?.validatePasswordConfirm(context, pass: resetPasswordData.password.text),
            hint: "Re-enter New Password",
            margin: const EdgeInsets.only(top: 20),
            controller: resetPasswordData.confirmPassword,
          ),
        ],
      ),
    );
  }
}
