part of 'MainWidgetsImports.dart';

class BuildSpecializationSection extends StatelessWidget {
  const BuildSpecializationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15, bottom: 10),
          child: MyText(
            title: "Top Specialization",
            color: MyColors.black,
            size: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceAround,
            runSpacing: 10,
            spacing: 10,
            children: List.generate(
              6,
                  (index) => const BuildSpecItem(),
            ),
          ),
        ),
      ],
    );
  }
}
