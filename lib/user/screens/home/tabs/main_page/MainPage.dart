part of 'MainPageImports.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainPageData mainPageData = MainPageData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: Column(
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
              children: const [
                BuildMainImage(),
                BuildSpecializationSection(),
                BuildDoctorsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
