part of 'ProvReviewsImports.dart';

class ProvReviews extends StatefulWidget {
  const ProvReviews({Key? key}) : super(key: key);

  @override
  State<ProvReviews> createState() => _ProvReviewsState();
}

class _ProvReviewsState extends State<ProvReviews> {
  ProvReviewsData provReviewsData = ProvReviewsData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "Reviews",
        showLeading: false,
      ),
    );
  }
}
