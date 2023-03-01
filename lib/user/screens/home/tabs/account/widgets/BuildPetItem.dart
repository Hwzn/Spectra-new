part of 'AccountWidgetsImports.dart';

class BuildPetItem extends StatelessWidget {
  final int index;
  final AccountData accountData;
  final PetModel model;
  const BuildPetItem({Key? key, required this.index, required this.accountData, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 130,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: MyColors.greyWhite,
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedImage(
                url: model.image,
                    // "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
                height: 75,
                width: 75,
                haveRadius: false,
                boxShape: BoxShape.circle,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              MyText(
                title: model.name,
                size: 13,
                color: MyColors.black,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            onTap: ()=> accountData.removePet(index),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                MdiIcons.trashCanOutline,
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
