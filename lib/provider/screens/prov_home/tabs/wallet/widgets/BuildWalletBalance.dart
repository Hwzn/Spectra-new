part of 'WalletWidgetsImports.dart';

class BuildWalletBalance extends StatelessWidget {
  final num balance;
  const BuildWalletBalance({Key? key, required this.balance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        children: [
          MyText(
            title: tr(context, 'balance'),
            size: 16,
            color: MyColors.black,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  title: balance.toString(),
                  size: 16,
                  color: MyColors.black,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
                MyText(
                  title: tr(context, 'sar'),
                  size: 10,
                  color: MyColors.grey,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
