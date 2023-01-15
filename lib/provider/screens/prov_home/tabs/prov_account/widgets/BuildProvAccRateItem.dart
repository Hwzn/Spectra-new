part of 'ProvAccountWidgetsImports.dart';

class BuildProvAccRateItem extends StatelessWidget {
  final ProvAccountData provAccountData;
  final String price;
  final String title;
  const BuildProvAccRateItem({Key? key, required this.provAccountData, required this.price, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultContainer(
          width: MediaQuery.of(context).size.width * 0.35,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(
                title: price,
                size: 30,
                color: MyColors.black,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
              MyText(
                title: "SAR",
                size: 14,
                color: MyColors.black,
              ),
              const SizedBox(height: 10),
              MyText(
                title: title,
                size: 13,
                color: MyColors.black,
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            onTap: ()=> provAccountData.editRate(),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                MdiIcons.commentEdit,
                color: MyColors.white,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
