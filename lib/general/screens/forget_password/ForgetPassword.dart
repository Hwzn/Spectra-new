part of 'ForgetPasswordImports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordData forgetPasswordData = ForgetPasswordData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(haveLeading: false),
      title: tr(context, 'forgetPassword'),
      showLogo: false,
      logo: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Image.asset(
          Res.verification,
          height: MediaQuery.of(context).size.height * 0.3,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            MyText(
              title: tr(context, 'enterPhoneResetPass'),
              color: MyColors.grey,
              size: 10,
              alien: TextAlign.center,
            ),
            BuildForgetForm(forgetPasswordData: forgetPasswordData),
          ],
        ),
      ),
      bottom: BuildForgetPasswordButton(forgetPasswordData: forgetPasswordData),
    );
  }
}
