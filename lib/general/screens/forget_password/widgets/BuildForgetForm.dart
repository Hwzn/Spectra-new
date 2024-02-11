part of 'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordData forgetPasswordData;

  const BuildForgetForm({Key? key, required this.forgetPasswordData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forgetPasswordData.formKey,
      child: GenericTextField(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        controller: forgetPasswordData.phone,
        fieldTypes: FieldTypes.normal,
        type: TextInputType.phone,
        action: TextInputAction.next,
        validate: (value) => value?.validateEmpty(context),
        hint: tr(context, 'phone'),
        margin: const EdgeInsets.only(top: 20),
      ),
    );
  }
}
