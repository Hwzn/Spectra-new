part of 'WalletWidgetsImports.dart';

class BuildWalletBalance extends StatelessWidget {
  const BuildWalletBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        children: [
          MyText(
            title: "Balance",
            size: 16,
            color: MyColors.black,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyText(
                  title: "12,000",
                  size: 16,
                  color: MyColors.black,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
                MyText(
                  title: "SAR",
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
