part of 'DoctorDetailsWidgetsImports.dart';

class BuildDoctorReviewItem extends StatelessWidget {
  const BuildDoctorReviewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CachedImage(
            url: "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
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
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 2),
                  child: MyText(
                    title: "Aya Hamed",
                    color: MyColors.black,
                    size: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Expanded(
                  child: MyText(
                    title: "Review content here, Review content here, Review content here.",
                    color: MyColors.blackOpacity,
                    size: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
