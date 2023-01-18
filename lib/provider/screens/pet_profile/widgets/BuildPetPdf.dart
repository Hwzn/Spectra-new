part of 'PetProfileWidgetsImports.dart';

class BuildPetPdf extends StatelessWidget {
  const BuildPetPdf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        children: [
          Image.asset(Res.pdf, height: 30, width: 30),
          const SizedBox(width: 10),
          Expanded(
            child: MyText(
              title: "pet history.pdf",
              color: MyColors.blackOpacity,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}
