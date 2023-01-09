part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const Splash({required this.navigatorKey});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.checkingData(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(NetworkImage(controller.data[0]), context);
    precacheImage(NetworkImage(controller.data[1]), context);
    precacheImage(NetworkImage(controller.data[2]), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xff635971),
              Color(0xff957785),
            ]
          ),
        ),
        child: Center(
          child: AnimationContainer(
            index: 0,
            vertical: true,
            duration: const Duration(milliseconds: 800),
            distance: MediaQuery.of(context).size.height * .3,
            child: Hero(
              tag: Res.logoWhite,
              child: Image.asset(
                Res.logoWhite,
                width: 250,
                height: 250,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
