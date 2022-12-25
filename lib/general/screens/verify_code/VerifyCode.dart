part of 'VerifyCodeImports.dart';

class VerifyCode extends StatefulWidget {
  final String email;

  const VerifyCode({Key? key, required this.email}) : super(key: key);

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  final VerifyCodeData verifyCodeData = VerifyCodeData();
  StopWatchTimer? stopWatchTimer;

  @override
  void initState() {
    stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      // presetMillisecond: 20000,
      onChange: (value) {
        final displayTime = StopWatchTimer.getDisplayTime(value,
            milliSecond: false, hours: false);
        verifyCodeData.timeCubit.onUpdateData(displayTime);
      },
    );
    stopWatchTimer?.setPresetSecondTime(60);

    stopWatchTimer!.onExecute.add(StopWatchExecute.start);
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await stopWatchTimer?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: const BuildAuthAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BuildHeaderLogo(),
                const BuildHeaderTitle(title: "Enter Verification Code"),
               BuildCodeField(verifyCodeData: verifyCodeData),
                BuildVerifyButton(
                  verifyCodeData: verifyCodeData,
                  email: widget.email,
                  stopWatchTimer: stopWatchTimer!,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
