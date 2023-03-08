part of 'DoctorDetailsWidgetsImports.dart';

class BuildDateTimeItem extends StatelessWidget {
  final List<AvailableDayModel> daysList;
  final Function()? onTap;

  const BuildDateTimeItem({Key? key, required this.daysList, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Icon(Icons.arrow_back_ios, color: MyColors.primary, size: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: 30,
          margin: const EdgeInsets.only(top: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              daysList.length,
              (index) => InkWell(
                onTap: onTap,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: daysList[index].selected
                        ? MyColors.primary
                        : MyColors.greyWhite,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: MyText(
                    title: daysList[index].name,
                    color: MyColors.white,
                    size: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Icon(Icons.arrow_forward_ios, color: MyColors.primary, size: 20),
      ],
    );
  }
}
