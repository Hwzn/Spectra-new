part of 'AboutImports.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> with AboutData {

  @override
  Widget build(BuildContext context) {
    var about = context.read<SettingCubit>().state.model.about;
    return AuthScaffold(
      appBar: DefaultAppBar(title: tr(context, 'aboutApp')),
      showTitle: false,
      body:BuildAboutView(text: about??"")
    );
  }
}
