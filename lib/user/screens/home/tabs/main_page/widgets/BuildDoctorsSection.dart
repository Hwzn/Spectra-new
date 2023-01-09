part of 'MainWidgetsImports.dart';

class BuildDoctorsSection extends StatelessWidget {
  const BuildDoctorsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 10),
          child: MyText(
            title: "Popular Doctors",
            color: MyColors.black,
            size: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...List.generate(
          3,
          (index) => const BuildDoctorItem(),
        ),
      ],
    );
  }
}
