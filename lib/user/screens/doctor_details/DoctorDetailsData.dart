part of 'DoctorDetailsImports.dart';

class DoctorDetailsData {
  // blocs
  final GenericBloc<DoctorDetailsModel?> detailsBloc = GenericBloc(null);
  final GenericBloc<bool> favBloc = GenericBloc(false);
  final GenericBloc<List<AvailableDayModel>> daysBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context, int id) async {
    var data = await UserRepository(context).getDoctorDetails(id);
    detailsBloc.onUpdateData(data);
    bool fav = data.doctor.isFav == 'fav' ? true : false;
    favBloc.onUpdateData(fav);
    getAvailableDays(data.doctor.availableTimes??[]);
  }

  addRemoveFav(BuildContext context, int id) async {
    await UserRepository(context).addRemoveFav(id);
    favBloc.onUpdateData(!favBloc.state.data);
  }

  getAvailableDays(List<AvailableDayModel> daysList){
    var list = daysList.where((element) => element.times.isNotEmpty)
        .toList();
    daysBloc.onUpdateData(list);
    if(list.isNotEmpty){
      list.forEach((element) {element.selected = true;});
      daysBloc.onUpdateData(list);
    }
  }

}