part of 'ProvHomeImports.dart';

class ProvHome extends StatefulWidget {
  const ProvHome({Key? key}) : super(key: key);

  @override
  State<ProvHome> createState() => _ProvHomeState();
}

class _ProvHomeState extends State<ProvHome> with TickerProviderStateMixin {
  ProvHomeData provHomeData = ProvHomeData();
  @override
  void initState() {
    provHomeData.initController(this, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => provHomeData.onBackPressed(),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: MyColors.grey.withOpacity(0.8),
          body: ProvHomeTabBarPages(provHomeData: provHomeData),
          bottomNavigationBar: ProvHomeTabBar(provHomeData: provHomeData),
        ),
      ),
    );
  }
}
