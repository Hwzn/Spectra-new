part of 'RegisterImports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterDate registerDate = RegisterDate();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(haveLeading: false),
      title: "Create New Account",
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BuildRegisterFields(registerDate: registerDate),
        ),
      ),
      bottom: Column(
        children: [
          BuildRegisterButton(registerDate: registerDate),
          const BuildHaveAccount(),
        ],
      ),
      bottomHeight: 110,
    );
  }
}
