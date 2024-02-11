part of 'ProvPreviousImports.dart';

class ProvPrevious extends StatelessWidget {
  final ProvReservationsData provReservationsData;

  const ProvPrevious({Key? key, required this.provReservationsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ReservationModel>>,
        GenericState<List<ReservationModel>>>(
      bloc: provReservationsData.previousBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
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
                  statusColor: state.data[index].status == "cancelled"
                      ? Colors.red[700]!
                      : Colors.green[700]!,
                  ended: true,
                  model: state.data[index],
                  fromDoctorHome: true,
                  endButton: Visibility(
                    visible: !state.data[index].hasSessionDetails &&
                        state.data[index].status != "cancelled",
                    child: DefaultButton(
                      title: tr(context, 'fillSessionDetails'),
                      height: 40,
                      fontSize: 12,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () => provReservationsData.sessionDetails(
                        context,
                        state.data[index].id,
                      ),
                    ),
                  ),
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
