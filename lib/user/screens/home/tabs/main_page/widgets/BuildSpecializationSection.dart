part of 'MainWidgetsImports.dart';

class BuildSpecializationSection extends StatelessWidget {
  final List<DropDownModel> specsList;
  const BuildSpecializationSection({Key? key, required this.specsList}) : super(key: key);

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
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            runSpacing: 10,
            spacing: 10,
            children: List.generate(
              specsList.length,
                  (index) => BuildSpecItem(model: specsList[index],),
            ),
          ),
        ),
      ],
    );
  }
}
