part of 'HomeImports.dart';

class HomeData {
  // keys
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  // blocs
  final GenericBloc<int> homeTabCubit = GenericBloc(0);

  // controllers
  late TabController tabController;

  // lists
  List<Widget> tabsView = [
    MainPage(),
    Reservations(),
    Blog(),
    Favorite(),
    Account(),
  ];

  List<BottomTabModel> tabs = [
    BottomTabModel(iconData: Icons.home, title: "Home"),
    BottomTabModel(iconData: MdiIcons.calendarMonthOutline, title: "Reservations"),
    BottomTabModel(iconData: MdiIcons.commentEdit, title: "Blog"),
    BottomTabModel(iconData: Icons.favorite, title: "Favorite"),
    BottomTabModel(iconData: MdiIcons.accountCircleOutline, title: "Account"),
  ];

  // methods
  void initController(TickerProvider tickerProvider, int index) {
    tabController = TabController(length: 5, vsync: tickerProvider);
    tabController.index = index;
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }

  void onChangePage(int index) {
    tabController.animateTo(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    homeTabCubit.onUpdateData(index);
  }
}
