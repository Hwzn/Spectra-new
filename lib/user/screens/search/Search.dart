part of 'SearchImports.dart';

class Search extends StatefulWidget {
  final List<DoctorModel> doctorsList;
  const Search({Key? key, required this.doctorsList}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchData searchData = SearchData();

  @override
  void initState() {
    searchData.fetchData(widget.doctorsList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Search Results"),
      body: BlocBuilder<GenericBloc<List<DoctorModel>>,
          GenericState<List<DoctorModel>>>(
        bloc: searchData.doctorsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                child: MyText(
                  title: tr(context, 'noDoctors'),
                  color: MyColors.primary,
                  size: 12,
                ),
              ),
              child: AnimationLimiter(
                child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemCount: state.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: BuildDoctorItem(
                            model: state.data[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
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
