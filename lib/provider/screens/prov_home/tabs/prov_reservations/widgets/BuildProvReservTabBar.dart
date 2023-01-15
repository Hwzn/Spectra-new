part of 'ProvReservWidgetsImports.dart';

class BuildProvReservTabBar extends StatelessWidget {
  final ProvReservationsData provReservationsData;
  const BuildProvReservTabBar({Key? key, required this.provReservationsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: provReservationsData.tabsBloc,
      builder: (context, state) {
        return Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors.white
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
            controller: provReservationsData.tabController,
            onTap: (index) {
              provReservationsData.tabController.animateTo(index);
              provReservationsData.tabsBloc.onUpdateData(index);
            },
            labelStyle: TextStyle(
              color: MyColors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            indicatorColor: MyColors.greyWhite,
            labelColor: MyColors.white,
            unselectedLabelColor: MyColors.grey,
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
