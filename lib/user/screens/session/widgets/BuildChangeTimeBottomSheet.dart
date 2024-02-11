part of 'SessionWidgetsImports.dart';

class BuildChangeTimeBottomSheet extends StatelessWidget {
  final SessionData sessionData;
  final ReservationModel model;

  const BuildChangeTimeBottomSheet(
      {Key? key, required this.sessionData, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          MyText(
            title: tr(context, 'changeTime'),
            color: MyColors.black,
            size: 16,
          ),
          const SizedBox(height: 10),
          Flexible(
            child: ListView(
              children: [
                BuildSessionChangeDay(sessionData: sessionData),
                BuildSessionChangeTime(sessionData: sessionData),
              ],
            ),
          ),
          DefaultButton(
            title: tr(context, 'changeTime'),
            margin: const EdgeInsets.all(20),
            onTap: () => sessionData.changeSessionTime(
              context,
              model.id,
              model.doctorDetails.id,
            ),
          ),
        ],
      ),
    );
  }
}
