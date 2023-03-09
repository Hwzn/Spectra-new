part of 'DoctorDetailsWidgetsImports.dart';

class BuildDoctorDateTime extends StatelessWidget {
  final List<AvailableDayModel> daysList;
  final num sessionPrice;
  final int doctorId;

  const BuildDoctorDateTime(
      {Key? key,
      required this.daysList,
      required this.sessionPrice,
      required this.doctorId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(AddReservationRoute(
          daysList: daysList, sessionPrice: sessionPrice, doctorId: doctorId)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: MyColors.greyWhite,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              title: "Available Days",
              color: MyColors.black,
              size: 13,
            ),
            Visibility(
              visible: daysList.isNotEmpty,
              replacement: MyText(
                title: "No Days Available",
                color: MyColors.primary,
                size: 12,
              ),
              child: BuildDateTimeItem(daysList: daysList),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
