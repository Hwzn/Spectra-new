part of 'ProvUpcomingImports.dart';

class ProvUpcoming extends StatelessWidget {
  final ProvReservationsData provReservationsData;
  const ProvUpcoming({Key? key, required this.provReservationsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ReservationModel>>,
        GenericState<List<ReservationModel>>>(
      bloc: provReservationsData.upcomingBloc,
      builder: (context, state) {
        if(state is GenericUpdateState){
          return Visibility(
            visible: state.data.isNotEmpty,
            replacement: Center(
              child: MyText(
                title: tr(context, 'noReservations'),
                color: MyColors.blackOpacity,
                size: 12,
              ),
            ),
            child: ListView(
              children: List.generate(
                state.data.length,
                    (index) => BuildReservationItem(
                      statusColor: MyColors.lightGrey,
                      fromDoctorHome: true,
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
