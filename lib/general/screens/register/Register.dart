part of 'RegisterImports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterData registerData = RegisterData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(haveLeading: false),
      title: tr(context, 'createAccount'),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BuildRegisterFields(registerData: registerData),
        ),
      ),
      bottom: Column(
        children: [
          BuildRegisterButton(registerDate: registerData),
          const BuildHaveAccount(),
        ],
      ),
      bottomHeight: 110,
    );
  }
}
