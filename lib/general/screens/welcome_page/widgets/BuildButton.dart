part of 'WelcomeWidgetImports.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr(context, 'signIn'),
      onTap: () => AutoRouter.of(context).push(LoginRoute()),
    );
  }
}
