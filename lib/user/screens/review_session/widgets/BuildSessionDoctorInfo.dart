part of 'ReviewSessionWidgetsImports.dart';

class BuildSessionDoctorInfo extends StatelessWidget {
  const BuildSessionDoctorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Doctor Info",
            color: MyColors.black,
            size: 13,
          ),
          const SizedBox(height: 10),
          MyText(
            title: "Here you can find info about doctor and it maybe 3 lines or more.Here you can find info about doctor and it maybe 3 lines or more.Here you can find info about doctor and it maybe 3 lines or more.Here you can find info about doctor and it maybe 3 lines or more.",
            color: MyColors.blackOpacity,
            size: 12,
          ),
        ],
      ),
    );
  }
}
