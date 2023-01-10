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
            child: ListView(
              children: [
                ...List.generate(
                  accountData.settingList(context).length,
                  (index) => accountData.settingList(context)[index],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 15),
                  child: MyText(
                    title: "Sign out",
                    color: MyColors.grey,
                    size: 14,
                    alien: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
