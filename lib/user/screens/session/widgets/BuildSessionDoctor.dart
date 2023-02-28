part of 'SessionWidgetsImports.dart';

class BuildSessionDoctor extends StatelessWidget {
  final DoctorModel model;
  const BuildSessionDoctor({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: const EdgeInsets.all(10),
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
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: CachedImage(
                  url: model.image,
                  // "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
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
                      initialRating: double.parse(model.avgRate),
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
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: MyText(
                        title: model.name,
                        color: MyColors.black,
                        size: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        const CachedImage(
                          url:
                          "https://images.ctfassets.net/rt5zmd3ipxai/q6gWiPMWCl0vRTBgwhO9K/2bed2b68c9e0324a40e1f9804a49cce5/All_Creatures_Logo_Final-01_2.png",
                          height: 25,
                          width: 25,
                          haveRadius: false,
                          boxShape: BoxShape.circle,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 5),
                        MyText(
                          title: "Center Name",
                          color: MyColors.primary,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
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
                  title: "${model.sessionPrice} SAR/Hour",
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
                  title: model.specializationName,
                  color: MyColors.lightGrey,
                  size: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
