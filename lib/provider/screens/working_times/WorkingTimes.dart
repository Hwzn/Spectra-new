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
  void initState() {
    workingTimesData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Working Times"),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          BuildWorkingDays(workingTimesData: workingTimesData),
          BuildWorkingTimes(workingTimesData: workingTimesData),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: LoadingButton(
          btnKey: workingTimesData.btnKey,
          title: "Save Times",
          textColor: MyColors.white,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          onTap: () => workingTimesData.saveTimes(context),
        ),
      ),
    );
  }
}
