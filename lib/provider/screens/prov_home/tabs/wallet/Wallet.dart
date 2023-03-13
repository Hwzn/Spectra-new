part of 'WalletImports.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  WalletData walletData = WalletData();

  @override
  void initState() {
    walletData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(
        title: "Wallet",
        showLeading: false,
      ),
      body: BlocBuilder<GenericBloc<WalletModel?>, GenericState<WalletModel?>>(
        bloc: walletData.walletBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildWalletBalance(
                  balance: state.data?.totalBalance ?? 0,
                ),
                DefaultContainer(
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 85,
                        lineWidth: 12,
                        animation: true,
                        percent: num.parse(state.data?.totalSessionBalance ?? '0')/100,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: MyColors.primary,
                        backgroundColor: MyColors.lightGrey,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            BuildPriceItem(
                                balance: state.data?.totalRescueBalance ?? ''),
                            BuildPriceItem(
                              balance: state.data?.totalSessionBalance ?? '',
                              active: true,
                            ),
                          ],
                        ),
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
