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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: List.generate(
          3,
          (index) => const BuildDoctorItem(
            isFavorite: true,
          ),
        ),
      ),
    );
  }
}
