part of 'BlogWidgetsImports.dart';

class BuildMap extends StatelessWidget {
  const BuildMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Utils.navigateToMapWithDirection(
        lat: "25.1972",
        lng: "55.2744",
        context: context,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            height: 90,
            child: ImgMap.Map(
              controller: ImgMap.MapController(
                location: LatLng(double.parse("25.1972"),
                    double.parse("55.2744")),
              ),
              builder: (context, x, y, z) {
                final url =
                    'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';
                return CachedImage(
                  url: url,
                  fit: BoxFit.cover,
                  height: 140,
                  haveRadius: true,
                  borderRadius:BorderRadius.circular(5),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: MyColors.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(Res.locator, height: 15, width: 15),
                const SizedBox(width: 10),
                MyText(
                  title: "View Location",
                  color: MyColors.blackOpacity,
                  size: 10,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
