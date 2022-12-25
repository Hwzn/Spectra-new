part of 'RegisterWidgetsImports.dart';

class BuildHaveAccount extends StatelessWidget {
  const BuildHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            title: tr(context, "haven'tAccount?"),
            color: MyColors.black,
            size: 13,
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: () => AutoRouter.of(context).push(const LoginRoute()),
            child: MyText(
              title: tr(context, "SignIn"),
              color: MyColors.primary,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}
