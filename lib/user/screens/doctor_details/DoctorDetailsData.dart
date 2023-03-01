part of 'DoctorDetailsImports.dart';

class DoctorDetailsData {
  // blocs
  final GenericBloc<DoctorDetailsModel?> detailsBloc = GenericBloc(null);
  final GenericBloc<bool> favBloc = GenericBloc(false);

  // methods
  fetchData(BuildContext context, int id) async {
    var data = await UserRepository(context).getDoctorDetails(id);
    detailsBloc.onUpdateData(data);
    bool fav = data.doctor.isFav == 'fav' ? true : false;
    favBloc.onUpdateData(fav);
  }

  addRemoveFav(BuildContext context, int id) async {
    await UserRepository(context).addRemoveFav(id);
    favBloc.onUpdateData(!favBloc.state.data);
  }

}