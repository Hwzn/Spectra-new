part of 'HomeImports.dart';

class HomeData {
  // keys
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  // blocs
  final GenericBloc<int> homeTabCubit = GenericBloc(0);

  // controllers
  late TabController tabController;

  // lists
  List<Widget> tabsView = const [
    MainPage(),
    Reservations(),
    Blog(),
    Favorite(),
    Account(),
  ];

  List<BottomTabModel> tabs(BuildContext context) => [
        BottomTabModel(iconData: Icons.home, title: tr(context, 'home')),
        BottomTabModel(
          iconData: MdiIcons.calendarMonthOutline,
          title: tr(context, 'reservations'),
        ),
        BottomTabModel(
          iconData: MdiIcons.commentEdit,
          title: tr(context, 'blog'),
        ),
        BottomTabModel(
          iconData: Icons.favorite,
          title: tr(context, 'favorites'),
        ),
        BottomTabModel(
          iconData: MdiIcons.accountCircleOutline,
          title: tr(context, 'account'),
        ),
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
