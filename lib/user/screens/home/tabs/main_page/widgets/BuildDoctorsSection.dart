part of 'MainWidgetsImports.dart';

class BuildDoctorsSection extends StatelessWidget {
  final List<DoctorModel> doctorsList;

  const BuildDoctorsSection({Key? key, required this.doctorsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 10),
          child: MyText(
            title: tr(context, 'popularDoctors'),
            color: MyColors.black,
            size: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...List.generate(
          doctorsList.length,
          (index) => BuildDoctorItem(
            model: doctorsList[index],
          ),
        ),
      ],
    );
  }
}
