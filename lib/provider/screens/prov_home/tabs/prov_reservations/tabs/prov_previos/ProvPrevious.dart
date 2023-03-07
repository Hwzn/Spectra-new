part of 'ProvPreviousImports.dart';

class ProvPrevious extends StatelessWidget {
  final ProvReservationsData provReservationsData;
  const ProvPrevious({Key? key, required this.provReservationsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // BuildReservationItem(
        //   statusColor: Colors.green[700]!,
        //   ended: true,
        //   endButton: DefaultButton(
        //     title: "Fill session details",
        //     height: 40,
        //     fontSize: 12,
        //     borderRadius: BorderRadius.circular(15),
        //     onTap: ()=> provReservationsData.sessionDetails(context),
        //   ),
        // ),
        MyText(
          title: "Commented widget was here",
          color: MyColors.primary,
          size: 12,
        ),
      ]
    );
  }
}
