part of 'DoctorDetailsWidgetsImports.dart';

class BuildDoctorReviews extends StatelessWidget {
  const BuildDoctorReviews({Key? key}) : super(key: key);

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
              InkWell(
                onTap: ()=> AutoRouter.of(context).push(ReviewsRoute()),
                child: MyText(
                  title: "See more",
                  color: MyColors.blackOpacity,
                  size: 10,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: RatingBar.builder(
              initialRating: 2,
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
          const BuildDoctorReviewItem(),
          const BuildDoctorReviewItem(),
        ],
      ),
    );
  }
}
