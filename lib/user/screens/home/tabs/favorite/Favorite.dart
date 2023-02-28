part of 'FavoriteImports.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  FavoriteData favoriteData = FavoriteData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "My Favorites",
        showLeading: false,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  // child: BuildDoctorItem(
                  //   isFavorite: true,
                  // ),
                  child: MyText(
                    title: "Commented widget was here",
                    color: MyColors.primary,
                    size: 12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
