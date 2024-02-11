part of 'ProvReviewsImports.dart';

class ProvReviews extends StatefulWidget {
  const ProvReviews({Key? key}) : super(key: key);

  @override
  State<ProvReviews> createState() => _ProvReviewsState();
}

class _ProvReviewsState extends State<ProvReviews> {
  ProvReviewsData provReviewsData = ProvReviewsData();

  @override
  void initState() {
    provReviewsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(
        title: tr(context, 'reviews'),
        showLeading: false,
      ),
      body: BlocBuilder<GenericBloc<List<ReviewModel>>,
          GenericState<List<ReviewModel>>>(
        bloc: provReviewsData.reviewsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return DefaultContainer(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RatingBar.builder(
                      initialRating: provReviewsData.avgRate,
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
                    child: Visibility(
                      visible: state.data.isNotEmpty,
                      replacement: Center(
                        child: MyText(
                          title: tr(context, 'noReviews'),
                          color: MyColors.blackOpacity,
                          size: 12,
                        ),
                      ),
                      child: AnimationLimiter(
                        child: ListView.builder(
                          itemCount: state.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 375),
                              child: SlideAnimation(
                                verticalOffset: 50.0,
                                child: BuildDoctorReviewItem(
                                  model: state.data[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
