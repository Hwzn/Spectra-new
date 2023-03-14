part of 'WorkingTimesImports.dart';

class WorkingTimes extends StatefulWidget {
  final List<AvailableDayModel> daysList;
  const WorkingTimes({Key? key, required this.daysList}) : super(key: key);

  @override
  State<WorkingTimes> createState() => _WorkingTimesState();
}

class _WorkingTimesState extends State<WorkingTimes> {
  WorkingTimesData workingTimesData = WorkingTimesData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Working Times"),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          // const BuildAvailableTime(
          //   title: "Select available days",
          //   detail: "Saturday",
          // ),
          MyText(
            title: "Commented widget was here",
            color: MyColors.primary,
            size: 12,
          ),
          Container(
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
                  title: "Select available time slots",
                  color: MyColors.blackOpacity,
                  size: 12,
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10, runSpacing: 10,
                  children: List.generate(
                    10,
                        (index) => Container(
                          height: 50, width: MediaQuery.of(context).size.width * .25,
                      // margin: const EdgeInsets.symmetric(horizontal: 3),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: MyColors.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child:  MyText(
                        title: "5 pm to 6 pm",
                        color: MyColors.white,
                        size: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:  DefaultButton(
        title: "Save Times",
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        onTap: ()=> AutoRouter.of(context).pop(),
      ),
    );
  }
}
