part of 'SessionWidgetsImports.dart';

class BuildChangeTimeBottomSheet extends StatelessWidget {
  final SessionData sessionData;
  const BuildChangeTimeBottomSheet({Key? key, required this.sessionData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          MyText(
            title: "Change Time",
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
            title: "Change Time",
            margin: const EdgeInsets.all(20),
            onTap: ()=> AutoRouter.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
