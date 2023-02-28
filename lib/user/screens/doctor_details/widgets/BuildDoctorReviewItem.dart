part of 'DoctorDetailsWidgetsImports.dart';

class BuildDoctorReviewItem extends StatelessWidget {
  final ReviewModel model;

  const BuildDoctorReviewItem({Key? key, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: model.reviewerImage,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  initialRating: double.parse(model.rate),
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
                    title: model.reviewerName,
                    color: MyColors.black,
                    size: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Visibility(
                  visible: model.comment != null,
                  child: Expanded(
                    child: MyText(
                      title: model.comment ?? '',
                      color: MyColors.blackOpacity,
                      size: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
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
