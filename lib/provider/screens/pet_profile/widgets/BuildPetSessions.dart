part of 'PetProfileWidgetsImports.dart';

class BuildPetSessions extends StatelessWidget {
  const BuildPetSessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: MyText(
            title: "Sessions",
            color: MyColors.black,
            size: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...List.generate(
          4,
          (index) => DefaultContainer(
            width: MediaQuery.of(context).size.width,
            child: MyText(
              title: "22/02/2023  3:45 pm",
              color: MyColors.blackOpacity,
              size: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
