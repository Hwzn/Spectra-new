part of 'ProvAccountImports.dart';

class ProvAccount extends StatefulWidget {
  const ProvAccount({Key? key}) : super(key: key);

  @override
  State<ProvAccount> createState() => _ProvAccountState();
}

class _ProvAccountState extends State<ProvAccount> {
  ProvAccountData provAccountData = ProvAccountData();

  @override
  void initState() {
    provAccountData.getWorkingDays(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(
        title: '',
        showLeading: false,
        child: BuildAccountHeader(),
      ),
      body: ListView(
        children: [
          BuildMyRatesSection(provAccountData: provAccountData),
          AnimationLimiter(
            child: ListView.builder(
              itemCount: provAccountData.settingList(context).length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: provAccountData.settingList(context)[index],
                    ),
                  ),
                );
              },
            ),
          ),
          InkWell(
            onTap: ()=> provAccountData.signOut(context),
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 15),
              child: MyText(
                title: "Sign out",
                color: MyColors.grey,
                size: 14,
                alien: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
