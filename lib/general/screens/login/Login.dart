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
      appBar: BuildAuthAppBar(
          haveLeading: false,
          onBack: () =>
              AutoRouter.of(context).popAndPush(const SelectUserRoute())),
      title: tr(context, "login"),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: [
            BuildLoginForm(loginData: loginData),
            BuildLoginButton(loginData: loginData),
            const BuildForgetPasswordView(),
            const BuildSocial(),
            const BuildDontHaveAccount()
          ],
        ),
      ),
    );
  }
}
