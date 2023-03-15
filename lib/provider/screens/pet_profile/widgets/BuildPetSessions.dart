part of 'PetProfileWidgetsImports.dart';

class BuildPetSessions extends StatelessWidget {
  final List sessions;

  const BuildPetSessions({Key? key, required this.sessions}) : super(key: key);

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
        Visibility(
          visible: sessions.isNotEmpty,
          replacement: DefaultContainer(
            width: MediaQuery.of(context).size.width,
            child: MyText(
              title: "No Attachments",
              color: MyColors.blackOpacity,
              size: 12,
            ),
          ),
          child: Column(
            children: List.generate(
              sessions.length,
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
          ),
        ),
      ],
    );
  }
}
