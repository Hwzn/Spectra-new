part of 'login_widgets_imports.dart';

class BuildDontHaveAccount extends StatelessWidget {
  const BuildDontHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            title: "Don't have account yet ? ",
            color: MyColors.blackOpacity,
            size: 13,
          ),
          InkWell(
            onTap: () => AutoRouter.of(context).push(RegisterRoute()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: MyText(
                title: "Sign up now",
                color: MyColors.primary,
                size: 13,
                // decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
