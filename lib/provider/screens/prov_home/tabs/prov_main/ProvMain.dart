part of 'ProvMainImports.dart';

class ProvMain extends StatefulWidget {
  const ProvMain({Key? key}) : super(key: key);

  @override
  State<ProvMain> createState() => _ProvMainState();
}

class _ProvMainState extends State<ProvMain> {
  ProvMainData provMainData = ProvMainData();

  @override
  void initState() {
    provMainData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '',
        centerTitle: true,
        leading: InkWell(
          onTap: () => AutoRouter.of(context).push(const AllChatsRoute()),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(Res.chat),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(const NotificationsRoute()),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            color: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            icon: Icon(
              Icons.notifications_rounded,
              color: MyColors.white,
              size: 28,
            ),
          ),
        ],
        child: Image.asset(Res.homeLogoWhite, width: 150),
      ),
      body: BlocBuilder<GenericBloc<ProvHomeModel?>,
          GenericState<ProvHomeModel?>>(
        bloc: provMainData.homeBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: DefaultContainer(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              title: "${state.data?.totalRatingsCount}",
                              size: 30,
                              color: MyColors.black,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            const SizedBox(height: 10),
                            MyText(
                              title: tr(context, 'totalRatings'),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              title: "${state.data?.totalReservationsCount}",
                              size: 30,
                              color: MyColors.black,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                            const SizedBox(height: 10),
                            MyText(
                              title: tr(context, 'totalReservations'),
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
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: MyText(
                          title: tr(context, 'totalBalance'),
                          size: 16,
                          color: MyColors.black,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          MyText(
                            title: "${state.data?.totalBalance}",
                            size: 20,
                            color: MyColors.black,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                          MyText(
                            title: tr(context, 'sar'),
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
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
