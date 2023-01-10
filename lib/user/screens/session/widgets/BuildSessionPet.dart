part of 'SessionWidgetsImports.dart';

class BuildSessionPet extends StatelessWidget {
  const BuildSessionPet({Key? key}) : super(key: key);

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
          const CachedImage(
            url: "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
            height: 50,
            width: 50,
            haveRadius: false,
            boxShape: BoxShape.circle,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          MyText(
            title: "Pet Name",
            color: MyColors.black,
            size: 12,
          ),
        ],
      ),
    );
  }
}
