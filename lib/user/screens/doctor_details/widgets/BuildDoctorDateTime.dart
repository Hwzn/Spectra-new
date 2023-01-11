part of 'DoctorDetailsWidgetsImports.dart';

class BuildDoctorDateTime extends StatelessWidget {
  const BuildDoctorDateTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> AutoRouter.of(context).push(AddReservationRoute()),
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
              title: "Available time slots",
              color: MyColors.black,
              size: 13,
            ),
            const SizedBox(height: 10),
            MyText(
              title: "Choose day",
              color: MyColors.blackOpacity,
              size: 12,
            ),
            const BuildDateTimeItem(title: "Sat 11/12"),
            const SizedBox(height: 10),
            MyText(
              title: "Choose time slot",
              color: MyColors.blackOpacity,
              size: 12,
            ),
            const BuildDateTimeItem(title: "5 pm to 6 pm"),
          ],
        ),
      ),
    );
  }
}
