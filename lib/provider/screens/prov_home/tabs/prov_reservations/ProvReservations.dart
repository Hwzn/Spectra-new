part of 'ProvReservationsImports.dart';

class ProvReservations extends StatefulWidget {
  const ProvReservations({Key? key}) : super(key: key);

  @override
  State<ProvReservations> createState() => _ProvReservationsState();
}

class _ProvReservationsState extends State<ProvReservations>
    with TickerProviderStateMixin {
  ProvReservationsData provReservationsData = ProvReservationsData();

  @override
  void initState() {
    provReservationsData.tabController = TabController(length: 2, vsync: this);
    provReservationsData.fetchData(context);
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
            BuildProvReservTabBar(provReservationsData: provReservationsData),
            Flexible(
              child: TabBarView(
                controller: provReservationsData.tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ProvUpcoming(provReservationsData: provReservationsData),
                  ProvPrevious(provReservationsData: provReservationsData),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
