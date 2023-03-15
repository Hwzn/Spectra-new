part of 'PetProfileWidgetsImports.dart';

class BuildPetHeader extends StatelessWidget {
  final String image;
  final String name;

  const BuildPetHeader({Key? key, required this.image, required this.name})
      : super(key: key);

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
          Align(
            alignment: Alignment.center,
            child: CachedImage(
              url: image,
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
              title: name,
              color: MyColors.white,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}
