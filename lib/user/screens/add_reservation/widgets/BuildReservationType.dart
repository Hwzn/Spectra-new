part of 'AddReservationWidgetsImports.dart';

class BuildReservationType extends StatelessWidget {
  const BuildReservationType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
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
            title: "Reservation Type",
            color: MyColors.blackOpacity,
            size: 12,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child:  MyText(
                  title: "My Pet",
                  color: MyColors.white,
                  size: 10,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: MyColors.greyWhite,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child:  MyText(
                  title: "Rescue Case",
                  color: MyColors.grey,
                  size: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
