part of 'ResetPasswordWidgetsInputs.dart';

class BuildResendCode extends StatelessWidget {
  final ResetPasswordData resetPasswordData;
  final String email;

  const BuildResendCode(
      {Key? key, required this.resetPasswordData, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<String>, GenericState<String>>(
        bloc: resetPasswordData.timeCubit,
        builder: (context, state) {
          if (resetPasswordData.stopWatchTimer!.isRunning) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
              child: MyText(
                title: " ${tr(context, 'resendCodeAfter')} ${state.data}"
                    " ${tr(context, 'seconds')} ",
                color: MyColors.black,
                size: 13,
                decoration: TextDecoration.underline,
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                resetPasswordData.onResendCode(context, email);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                child: MyText(
                  title: tr(context, 'resendCode'),
                  color: MyColors.black,
                  size: 13,
                  decoration: TextDecoration.underline,
                ),
              ),
            );
          }
        });
  }
}
