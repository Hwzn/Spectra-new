part of 'WelcomeWidgetImports.dart';


class BuildJoinText extends StatelessWidget {
  const BuildJoinText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> AutoRouter.of(context).push(ProvRegisterRoute()),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: MyText(
          title: "JOIN AS A PROVIDER",
          color: MyColors.secondary,
          size: 12,
          fontWeight: FontWeight.bold,
          alien: TextAlign.center,
        ),
      ),
    );
  }
}
