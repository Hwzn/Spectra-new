part of 'ReviewsImports.dart';

class Reviews extends StatefulWidget {
  final List<ReviewModel> reviewsList;
  final double avgReviews;

  const Reviews({Key? key, required this.reviewsList, required this.avgReviews})
      : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  ReviewsData reviewsData = ReviewsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Reviews"),
      body: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(10),
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: RatingBar.builder(
                initialRating: widget.avgReviews,
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
            Flexible(
              child: AnimationLimiter(
                child: ListView.builder(
                  itemCount: widget.reviewsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: BuildDoctorReviewItem(
                          model: widget.reviewsList[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
