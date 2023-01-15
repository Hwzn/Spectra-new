part of 'ProvMainImports.dart';

class ProvMain extends StatefulWidget {
  const ProvMain({Key? key}) : super(key: key);

  @override
  State<ProvMain> createState() => _ProvMainState();
}

class _ProvMainState extends State<ProvMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '',
        centerTitle: true,
        leading: InkWell(
          onTap: () => AutoRouter.of(context).push(AllChatsRoute()),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(Res.chat),
          ),
        ),
        actions: [
          IconButton(
            onPressed: ()=> AutoRouter.of(context).push(NotificationsRoute()),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            icon: Icon(
              Icons.notifications_rounded,
              color: MyColors.white,
              size: 28,
            ),
          ),
        ],
        child: Image.asset(Res.homeLogoWhite, width: 150),
      ),
    );
  }
}
