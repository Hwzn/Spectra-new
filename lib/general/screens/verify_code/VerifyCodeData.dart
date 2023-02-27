part of 'VerifyCodeImports.dart';

class VerifyCodeData {
  // variables
  String? code;
  StopWatchTimer? stopWatchTimer;

  // blocs
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  // keys
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();
  GenericBloc<String> timeCubit = GenericBloc("0");

  // methods
  void handleStopWatchConfig() {
    stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,
      onChange: (value) {
        final displayTime = StopWatchTimer.getDisplayTime(value,
            milliSecond: false, hours: false);
        timeCubit.onUpdateData(displayTime);
      },
    );
    stopWatchTimer?.setPresetSecondTime(60);
    stopWatchTimer!.onExecute.add(StopWatchExecute.start);
  }

  void onComplete(String value) {
    codeCubit.onUpdateData(value.length == 4);
    code = value;
  }

  void onActiveAccount(BuildContext context, String phone,
      {bool? fromRegister}) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState?.animateForward();
      var result =
          await GeneralRepository(context).activeAccount(code ?? '', phone);
      btnKey.currentState?.animateReverse();
      if (result) {
        fromRegister == true
            ? AutoRouter.of(context)
                .popUntilRouteWithName(WelcomePageRoute.name)
            : AutoRouter.of(context)
                .push(ResetPasswordRoute(email: phone, code: "$code"));
        ;
      }
    }
  }

  void onResendCode(BuildContext context, String email) async {
    await LoadingDialog.showLoadingDialog();
    await GeneralRepository(context).resendCode(email);
    EasyLoading.dismiss();
  }
}
