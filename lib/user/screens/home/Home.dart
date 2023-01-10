part of 'HomeImports.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final HomeData homeData = HomeData();

  @override
  void initState() {
    homeData.initController(this, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => homeData.onBackPressed(),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: MyColors.grey.withOpacity(0.8),
          body: BuildTabBarPages(homeData: homeData),
          bottomNavigationBar: BuildTabBarBody(homeData: homeData),
        ),
      ),
    );
  }
}
