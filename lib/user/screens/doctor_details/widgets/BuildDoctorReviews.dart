part of 'DoctorDetailsWidgetsImports.dart';

class BuildDoctorReviews extends StatelessWidget {
  final double avgRate;
  final List<ReviewModel> reviewsList;

  const BuildDoctorReviews(
      {Key? key, required this.avgRate, required this.reviewsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(5),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                title: "Reviews",
                color: MyColors.black,
                size: 12,
              ),
              Visibility(
                visible: reviewsList.isNotEmpty,
                child: InkWell(
                  onTap: () => AutoRouter.of(context).push(ReviewsRoute()),
                  child: MyText(
                    title: "See more",
                    color: MyColors.blackOpacity,
                    size: 10,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: RatingBar.builder(
              initialRating: avgRate,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: false,
              updateOnDrag: false,
              itemCount: 5,
              itemSize: 30,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              ignoreGestures: true,
              onRatingUpdate: (index) {},
            ),
          ),
          Visibility(
            visible: reviewsList.isNotEmpty,
            replacement: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: MyText(
                title: "No Reviews Available",
                color: MyColors.primary,
                size: 12,
              ),
            ),
            child: Column(
              children: List.generate(
                reviewsList.length,
                (index) => BuildDoctorReviewItem(
                  model: reviewsList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
