part of 'AccountWidgetsImports.dart';

class BuildAccountHeader extends StatelessWidget {
  const BuildAccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CachedImage(
          url:
          "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
          height: 50,
          width: 50,
          haveRadius: false,
          boxShape: BoxShape.circle,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                title: "Hello",
                color: MyColors.white,
                size: 12,
                fontWeight: FontWeight.normal,
              ),
              MyText(
                title: "Aya Hamed",
                color: MyColors.white,
                size: 13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
