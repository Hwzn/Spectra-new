part of 'SessionWidgetsImports.dart';

class BuildChangeTimeBottomSheet extends StatelessWidget {
  const BuildChangeTimeBottomSheet({Key? key}) : super(key: key);

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
              children: const [
                BuildAvailableTime(
                  title: "Available days",
                  detail: "Sat 11/12",
                ),
                BuildAvailableTime(
                  title: "Available time slots",
                  detail: "5 pm to 6 pm",
                ),
                BuildPaymentInfo(),
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
