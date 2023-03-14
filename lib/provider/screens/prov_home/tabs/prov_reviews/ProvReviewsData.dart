part of 'ProvReviewsImports.dart';

class ProvReviewsData {
  // blocs
  final GenericBloc<List<ReviewModel>>  reviewsBloc = GenericBloc([]);

  // variables
  double avgRate = 0.0;

  // methods
  fetchData(BuildContext context) async {
    var data = await DoctorRepository(context).getDoctorReviews();
    reviewsBloc.onUpdateData(data);
    var reviewList = reviewsBloc.state.data;
    if(reviewList.isNotEmpty){
      avgRate = double.parse(reviewList.first.avgRate);
    }
  }

}