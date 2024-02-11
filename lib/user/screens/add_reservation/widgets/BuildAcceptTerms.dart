part of 'AddReservationWidgetsImports.dart';

class BuildAcceptTerms extends StatelessWidget {
  final AddReservationData addReservationData;

  const BuildAcceptTerms({Key? key, required this.addReservationData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: addReservationData.termsBloc,
            builder: (context, state) {
              return Checkbox(
                value: state.data,
                onChanged: (v) {
                  addReservationData.termsBloc.onUpdateData(!state.data);
                },
              );
            },
          ),
          MyText(
            title: tr(context, 'acceptTerms'),
            color: MyColors.black,
            size: 12,
            fontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}
