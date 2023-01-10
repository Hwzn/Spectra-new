part of 'AddPetWidgetsImports.dart';

class BuildUploadFile extends StatelessWidget {
  const BuildUploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Upload file name",
            color: MyColors.black,
            size: 12,
          ),
          Container(
            height: 55,
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: MyText(
              title: "+  Upload file name",
              color: MyColors.blackOpacity,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
