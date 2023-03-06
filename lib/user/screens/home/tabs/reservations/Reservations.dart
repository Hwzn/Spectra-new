part of 'ReservationsImports.dart';

class Reservations extends StatefulWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations>
    with TickerProviderStateMixin {
  ReservationsData reservationsData = ReservationsData();

  @override
  void initState() {
    reservationsData.tabController = TabController(length: 2, vsync: this);
    reservationsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColors.bg,
        appBar: const DefaultAppBar(
          title: "My Reservations",
          showLeading: false,
        ),
        body: Column(
          children: [
            BuildReservationsTabBar(reservationsData: reservationsData),
            Flexible(
              child: TabBarView(
                controller: reservationsData.tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  UpcomingTab(reservationsData: reservationsData),
                  PreviousTab(reservationsData: reservationsData),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
