part of 'VerifyCodeImports.dart';

class VerifyCode extends StatefulWidget {
  final String email;
  final bool? fromRegister;

  const VerifyCode({Key? key, required this.email, this.fromRegister}) : super(key: key);

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  final VerifyCodeData verifyCodeData = VerifyCodeData();

  @override
  void initState() {
    verifyCodeData.handleStopWatchConfig();
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await verifyCodeData.stopWatchTimer
        ?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: AuthScaffold(
        appBar: const BuildAuthAppBar(),
        title: "Enter Verification Code",
        showLogo: false,
        logo: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Image.asset(
            Res.verification,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: MyText(
                    title:
                        "Please enter verification code sent to \n your mobile number",
                    color: MyColors.grey,
                    size: 10,
                    alien: TextAlign.center,
                  ),
                ),
                BuildCodeField(verifyCodeData: verifyCodeData),
              ],
            ),
          ),
        ),
        bottom: BuildVerifyButton(
          verifyCodeData: verifyCodeData,
          email: widget.email,
          stopWatchTimer: verifyCodeData.stopWatchTimer!,
          fromRegister: widget.fromRegister,
        ),
        bottomHeight: 100,
      ),
    );
  }
}
