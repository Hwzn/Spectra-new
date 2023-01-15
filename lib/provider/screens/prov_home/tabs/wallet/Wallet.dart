part of 'WalletImports.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  WalletData walletData = WalletData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(
        title: "Wallet",
        showLeading: false,
      ),
      body: Column(
        children: [
          const BuildWalletBalance(),
          DefaultContainer(
            child: Row(
              children: [
                CircularPercentIndicator(
                  radius: 85,
                  lineWidth: 12,
                  animation: true,
                  percent: 0.5,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: MyColors.primary,
                  backgroundColor: MyColors.lightGrey,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      BuildPriceItem(balance: "6,000"),
                      BuildPriceItem(balance: "6,000", active: true),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
