part of 'AccountImports.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  AccountData accountData = AccountData();

  @override
  void initState() {
    accountData.fetchPets();
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
      body: Column(
        children: [
          BuildPetsSection(accountData: accountData),
          Flexible(
            child: AnimationLimiter(
              child: ListView.builder(
                itemCount: accountData.settingList(context).length,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: accountData.settingList(context)[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          InkWell(
            onTap: ()=> Phoenix.rebirth(context),
            child: Container(
              margin: const EdgeInsets.only(top: 25, bottom: 15),
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
