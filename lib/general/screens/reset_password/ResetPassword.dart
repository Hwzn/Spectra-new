part of 'ResetPasswordImports.dart';

class ResetPassword extends StatefulWidget {
  final String email;
  final String code;

  const ResetPassword({Key? key, required this.email, required this.code})
      : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordData resetPasswordData = ResetPasswordData();

  @override
  void initState() {
    resetPasswordData.handleStopWatchConfig();
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await resetPasswordData.stopWatchTimer
        ?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(),
      title: tr(context, 'recreatePassword'),
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
              title: tr(context, 'createNewPassword'),
              color: MyColors.grey,
              size: 10,
              alien: TextAlign.center,
            ),
            BuildResetPasswordInputs(resetPasswordData: resetPasswordData),
            BuildResetPasswordButton(
              resetPasswordData: resetPasswordData,
              code: widget.code,
              email: widget.email,
            ),
          ],
        ),
      ),
    );
  }
}
