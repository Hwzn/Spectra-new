part of 'ReviewSessionWidgetsImports.dart';

class BuildRateSession extends StatelessWidget {
  final ReviewSessionData data;
  const BuildRateSession({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Rate Session",
            color: MyColors.black,
            size: 13,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: MyText(
              title: "Rating helps us improve the provided services",
              color: MyColors.grey,
              size: 12,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: RatingBar.builder(
              initialRating: 0,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: false,
              updateOnDrag: false,
              itemCount: 5,
              itemSize: 50,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (index) {
                data.rate = index;
                print(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
