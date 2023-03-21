part of 'MainPageImports.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainPageData mainPageData = MainPageData();

  @override
  void initState() {
    mainPageData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: BlocBuilder<GenericBloc<HomeModel?>, GenericState<HomeModel?>>(
        bloc: mainPageData.homeBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                Stack(
                  children: [
                    Container(height: MediaQuery.of(context).size.height * .23),
                    const BuildMainAppBar(),
                    BuildMainSearch(mainPageData: mainPageData),
                  ],
                ),
                Flexible(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      InkWell(
                        onTap: ()=> AutoRouter.of(context).push(SessionCallRoute()),
                        child: BuildMainImage(
                          bannersList: state.data?.banners ?? [],
                        ),
                      ),
                      BuildSpecializationSection(
                        specsList: state.data?.specializations ?? [],
                      ),
                      BuildDoctorsSection(
                        doctorsList: state.data?.popularDoctors ?? [],
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
