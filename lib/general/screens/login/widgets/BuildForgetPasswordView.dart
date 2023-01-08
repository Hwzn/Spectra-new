part of 'login_widgets_imports.dart';

class BuildForgetPasswordView extends StatelessWidget {
  const BuildForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(const ForgetPasswordRoute()),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Res.forgetPass, width: 15),
              const SizedBox(width: 10),
              MyText(
                title: "Forgot password ?",
                color: MyColors.grey,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
