part of 'BlogWidgetsImports.dart';

class BuildPostTitle extends StatelessWidget {
  const BuildPostTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CachedImage(
          url:
          "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
          height: 35,
          width: 35,
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
                title: "Aya Hamed",
                color: MyColors.black,
                size: 12,
              ),
              MyText(
                title: "5 Hours ago",
                color: MyColors.grey,
                size: 10,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: MyColors.lightGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: MyText(
            title: "200522L",
            color: MyColors.blackOpacity,
            size: 8,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        )
      ],
    );
  }
}
