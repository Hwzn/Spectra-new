part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  const BuildLoginForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(),
            label: "Phone Number",
            margin: EdgeInsets.only(top: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(Res.mobile),
            ),
            onChange: controller.onChangePhone,
          ),
          GenericTextField(
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value?.validatePhone(),
            label: "Password",
            margin: EdgeInsets.only(top: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(Res.password),
            ),
            onChange: controller.onChangePassword,
          ),
        ],
      ),
    );
  }
}
