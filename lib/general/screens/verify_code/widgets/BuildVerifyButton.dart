part of 'VerifyCodeWidgetsImports.dart';

class BuildVerifyButton extends StatelessWidget {
  final VerifyCodeData verifyCodeData;
  final String email;
  final StopWatchTimer stopWatchTimer;
  final bool? fromRegister;

  const BuildVerifyButton(
      {Key? key,
      required this.verifyCodeData,
      required this.email,
      required this.stopWatchTimer,
      this.fromRegister})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
            borderColor: MyColors.primary,
            title: tr(context, 'confirm'),
            onTap: () => verifyCodeData.onActiveAccount(context, email,
                fromRegister: fromRegister),
            color: MyColors.primary,
            textColor: MyColors.white,
            btnKey: verifyCodeData.btnKey,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            fontSize: 14),
        BlocBuilder<GenericBloc<String>, GenericState<String>>(
          bloc: verifyCodeData.timeCubit,
          builder: (context, state) {
            if (stopWatchTimer.isRunning) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      title: "${tr(context, 'tryAgainAfter')}  ",
                      color: MyColors.grey,
                      size: 13,
                    ),
                    MyText(
                      title: state.data,
                      color: MyColors.primary,
                      size: 13,
                    ),
                  ],
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  verifyCodeData.onResendCode(context, email);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.only(top: 20),
                  child: MyText(
                    title: tr(context ,'resendCode'),
                    color: MyColors.primary,
                    size: 13,
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
