part of 'WelcomePageImports.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final WelcomePageData welcomePageData = WelcomePageData();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              child: Image.asset(Res.logo, width: 100, height: 100),
            ),
            BuildSlider(welcomePageData: welcomePageData),
            BuildDotsIndicator(welcomePageData: welcomePageData),
            const BuildButton(),
            const BuildJoinText(),
          ],
        ),
      ),
      onWillPop: () async => false,
    );
  }
}
