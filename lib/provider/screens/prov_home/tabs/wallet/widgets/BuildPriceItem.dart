part of 'WalletWidgetsImports.dart';

class BuildPriceItem extends StatelessWidget {
  final String balance;
  final bool active;

  const BuildPriceItem({Key? key, required this.balance, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.circle,
                color: active ? MyColors.primary : MyColors.lightGrey,
                size: 18,
              ),
              const SizedBox(width: 10),
              MyText(
                title: balance,
                size: 16,
                color: MyColors.black,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ],
          ),
          MyText(
            title: tr(context, 'sar'),
            size: 11,
            color: MyColors.grey,
          ),
        ],
      ),
    );
  }
}
