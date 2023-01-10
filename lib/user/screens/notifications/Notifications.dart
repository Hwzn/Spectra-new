part of 'NotificationsImports.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(title: "Notifications", showLeading: false),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: List.generate(
          4,
              (index) => BuildNotificationItem(),
        ),
      ),
    );
  }
}
