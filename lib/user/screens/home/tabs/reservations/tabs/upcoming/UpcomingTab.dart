part of 'UpcomingTabImports.dart';

class UpcomingTab extends StatelessWidget {
  final ReservationsData reservationsData;

  const UpcomingTab({Key? key, required this.reservationsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ReservationModel>>,
        GenericState<List<ReservationModel>>>(
      bloc: reservationsData.upcomingBloc,
      builder: (context, state) {
        if(state is GenericUpdateState){
          return Visibility(
            visible: state.data.isNotEmpty,
            replacement: Center(
              child: MyText(
                title: "No Reservations",
                color: MyColors.blackOpacity,
                size: 12,
              ),
            ),
            child: ListView(
              children: List.generate(
                state.data.length,
                    (index) => BuildReservationItem(
                  statusColor: MyColors.lightGrey,
                      model: state.data[index],
                ),
              ),
            ),
          );
        } else {
          return LoadingDialog.showLoadingView();
        }
      },
    );
  }
}
