part of 'FavoriteImports.dart';

class FavoriteData {
  // blocs
  final GenericBloc<List<DoctorModel>> favoritesBloc = GenericBloc([]);

  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getFavorites();
    favoritesBloc.onUpdateData(data);
  }

}