part of 'DoctorDetailsImports.dart';

class DoctorDetailsData {
  // blocs
  final GenericBloc<DoctorDetailsModel?> detailsBloc = GenericBloc(null);

  // methods
  fetchData(BuildContext context, int id) async {
    var data = await UserRepository(context).getDoctorDetails(id);
    detailsBloc.onUpdateData(data);
  }

}