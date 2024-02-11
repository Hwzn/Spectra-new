part of 'FavoriteImports.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  FavoriteData favoriteData = FavoriteData();

  @override
  void initState() {
    favoriteData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: tr(context, 'myFavorites'),
        showLeading: false,
      ),
      body: BlocBuilder<GenericBloc<List<DoctorModel>>, GenericState<List<DoctorModel>>>(
        bloc: favoriteData.favoritesBloc,
        builder: (context, state) {
          if (state is GenericUpdateState){
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                child: MyText(
                  title: tr(context, 'noFavorites'),
                  color: MyColors.primary,
                  size: 12,
                ),
              ),
              child: AnimationLimiter(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemCount: state.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: BuildDoctorItem(
                            isFavorite: true,
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
