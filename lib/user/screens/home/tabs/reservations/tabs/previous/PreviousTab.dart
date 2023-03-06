part of 'PreviousTabImports.dart';

class PreviousTab extends StatelessWidget {
  final ReservationsData reservationsData;

  const PreviousTab({Key? key, required this.reservationsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ReservationModel>>,
        GenericState<List<ReservationModel>>>(
      bloc: reservationsData.previousBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
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
                  status: "Complete",
                  statusColor: MyColors.lightGrey,
                  ended: true,
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
