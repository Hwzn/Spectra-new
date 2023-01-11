part of 'DoctorDetailsWidgetsImports.dart';

class BuildDateTimeItem extends StatelessWidget {
  final String title;
  const BuildDateTimeItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.arrow_back_ios, color: MyColors.primary, size: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: MyColors.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child:  MyText(
                      title: title,
                      color: MyColors.white,
                      size: 10,
                    ),
                  ),
            ),
          ),
        ),
        Icon(Icons.arrow_forward_ios, color: MyColors.primary, size: 20),
      ],
    );
  }
}
