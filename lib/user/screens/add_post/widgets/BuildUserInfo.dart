part of 'AddPostWidgetsImports.dart';

class BuildUserInfo extends StatefulWidget {
  const BuildUserInfo({Key? key}) : super(key: key);

  @override
  State<BuildUserInfo> createState() => _BuildUserInfoState();
}

class _BuildUserInfoState extends State<BuildUserInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Row(
        children: [
          const CachedImage(
            url: "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
            height: 40,
            width: 40,
            haveRadius: false,
            boxShape: BoxShape.circle,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          MyText(
            title: "Aya Hamed",
            color: MyColors.black,
            size: 12,
          ),
        ],
      ),
    );
  }
}
