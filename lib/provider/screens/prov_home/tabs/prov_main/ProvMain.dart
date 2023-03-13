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
            onPressed: () => AutoRouter.of(context).push(NotificationsRoute()),
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: DefaultContainer(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        title: "70",
                        size: 30,
                        color: MyColors.black,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                      const SizedBox(height: 10),
                      MyText(
                        title: "Total \nRatings",
                        size: 16,
                        color: MyColors.black,
                        alien: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: DefaultContainer(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        title: "55",
                        size: 30,
                        color: MyColors.black,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                      const SizedBox(height: 10),
                      MyText(
                        title: "Total \nReservations",
                        size: 16,
                        color: MyColors.black,
                        alien: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          DefaultContainer(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: MyText(
                    title: "Total Balance",
                    size: 16,
                    color: MyColors.black,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyText(
                      title: "12,000",
                      size: 20,
                      color: MyColors.black,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    MyText(
                      title: "SAR",
                      size: 12,
                      color: MyColors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
