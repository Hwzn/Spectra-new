part of 'PetProfileWidgetsImports.dart';

class BuildPetInfo extends StatelessWidget {
  const BuildPetInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      margin: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Pet Info",
            color: MyColors.black,
            size: 12,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 5),
          MyText(
            title: "Here you can find info pet history and it maybe 3 lines or more.Here you can find info pet hisyory and it maybe 3 lines or more.Here you can find info pet hisyory and it maybe 3 lines or more.Here you can find info pet hisyory and it maybe 3 lines or more.",
            color: MyColors.blackOpacity,
            size: 12,
            fontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}
