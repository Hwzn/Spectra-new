part of 'MainWidgetsImports.dart';

class BuildDoctorItem extends StatelessWidget {
  final bool isFavorite;

  const BuildDoctorItem({Key? key, this.isFavorite = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: MyColors.greyWhite,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const CachedImage(
                  url:
                      "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
                  height: 50,
                  width: 50,
                  haveRadius: false,
                  boxShape: BoxShape.circle,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      initialRating: 2,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      updateOnDrag: false,
                      itemCount: 5,
                      itemSize: 12,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      ignoreGestures: true,
                      onRatingUpdate: (index) {},
                    ),
                    const SizedBox(height: 5),
                    MyText(
                      title: "Aya Hamed",
                      color: MyColors.black,
                      size: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: isFavorite,
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Icon(
                  MdiIcons.tagMultiple,
                  color: MyColors.lightGrey,
                  size: 20,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: MyText(
                  title: "30 SAR/Hour",
                  color: MyColors.lightGrey,
                  size: 12,
                ),
              ),
              Image.asset(
                Res.paw,
                // height: 15,
                width: 15,
                color: MyColors.grey.withOpacity(0.8),
              ),
              const SizedBox(width: 5),
              Expanded(
                flex: 1,
                child: MyText(
                  title: "Specialization",
                  color: MyColors.lightGrey,
                  size: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
