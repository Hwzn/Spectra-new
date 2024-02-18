part of 'LoginImports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginData loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(
        haveLeading: false,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: [
            BuildLoginForm(loginData: loginData),
            const BuildForgetPasswordView(),
          ],
        ),
      ),
      bottomHeight: 100,
      bottom: Column(
        children: [
          BuildLoginButton(loginData: loginData),
          const BuildDontHaveAccount(),
        ],
      ),
    );
  }
}
