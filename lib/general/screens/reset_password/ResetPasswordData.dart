part of 'ResetPasswordImports.dart';

class ResetPasswordData {
  // keys
  GlobalKey<FormState> formKey = GlobalKey();
  StopWatchTimer? stopWatchTimer;

  // controllers
  TextEditingController code = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  GenericBloc<String> timeCubit = GenericBloc("0");


  // methods
  void handleStopWatchConfig(){
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

  void onResetPassword(BuildContext context, String phone) async {
    AutoRouter.of(context).popUntilRouteWithName(LoginRoute.name);
    return;
    FocusScope.of(context).requestFocus(FocusNode());
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      var data = await GeneralRepository(context).resetUserPassword(phone, password.text);
      btnKey.currentState!.animateReverse();
      CustomToast.showSimpleToast(msg: data["msg"]);
    }
  }

  void onResendCode(BuildContext context, String phoneOrEmail) async {
   // await GeneralRepository(context).resendCode(phoneOrEmail);
  }
}
