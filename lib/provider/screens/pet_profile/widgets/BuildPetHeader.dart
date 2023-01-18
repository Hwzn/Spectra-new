part of 'PetProfileWidgetsImports.dart';

class BuildPetHeader extends StatelessWidget {
  const BuildPetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => AutoRouter.of(context).pop(),
            child: Icon(
              Icons.arrow_back_ios,
              color: MyColors.white,
              size: 18,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: CachedImage(
              url:
              "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
              height: 110,
              width: 110,
              haveRadius: false,
              boxShape: BoxShape.circle,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            child: MyText(
              title: "Mokka",
              color: MyColors.white,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}
