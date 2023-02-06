part of 'WorkingTimesImports.dart';

class WorkingTimes extends StatefulWidget {
  const WorkingTimes({Key? key}) : super(key: key);

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
        children: const [
          BuildAvailableTime(
            title: "Available days",
            detail: "Sat 11/12",
          ),
          BuildAvailableTime(
            title: "Available time slots",
            detail: "5 pm to 6 pm",
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
