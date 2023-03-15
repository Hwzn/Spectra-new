part of 'SessionWidgetsImports.dart';

class BuildSessionPet extends StatelessWidget {
  final String image;
  final String name;

  const BuildSessionPet({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: MyColors.greyWhite,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          CachedImage(
            url: image,
            height: 50,
            width: 50,
            haveRadius: false,
            boxShape: BoxShape.circle,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          MyText(
            title: name,
            color: MyColors.black,
            size: 12,
          ),
        ],
      ),
    );
  }
}
