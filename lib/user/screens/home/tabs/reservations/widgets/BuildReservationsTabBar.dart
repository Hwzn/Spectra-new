part of 'ReservationsWidgetsImports.dart';

class BuildReservationsTabBar extends StatelessWidget {
  final ReservationsData reservationsData;

  const BuildReservationsTabBar({Key? key, required this.reservationsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: reservationsData.tabsBloc,
      builder: (context, state) {
        return Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // border: Border.all(color: MyColors.greyWhite)
          ),
          child: TabBar(
            indicator: BoxDecoration(
              color: MyColors.secondary,
              borderRadius: BorderRadius.only(
                topRight: state.data == 0
                    ? const Radius.circular(0)
                    : const Radius.circular(10),
                topLeft: state.data == 0
                    ? const Radius.circular(10)
                    : const Radius.circular(0),
                bottomRight: state.data == 0
                    ? const Radius.circular(0)
                    : const Radius.circular(10),
                bottomLeft: state.data == 0
                    ? const Radius.circular(10)
                    : const Radius.circular(0),
              ),
            ),
            controller: reservationsData.tabController,
            onTap: (index) {
              reservationsData.tabController.animateTo(index);
              reservationsData.tabsBloc.onUpdateData(index);
            },
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            indicatorColor: MyColors.greyWhite,
            labelColor: MyColors.white,
            unselectedLabelColor: MyColors.primary,
            tabs: const [
              Tab(text: "Upcoming"),
              Tab(text: "Previous"),
            ],
          ),
        );
      },
    );
  }
}
