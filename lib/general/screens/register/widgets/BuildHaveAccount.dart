part of 'RegisterWidgetsImports.dart';

class BuildHaveAccount extends StatelessWidget {
  const BuildHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            title: "Already user ?",
            color: MyColors.grey,
            size: 13,
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: () => AutoRouter.of(context).pop(),
            child: MyText(
              title: "Sign in now",
              color: MyColors.primary,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}
