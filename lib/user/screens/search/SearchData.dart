part of 'SearchImports.dart';

class SearchData {
  // blocs
  final GenericBloc<List<DoctorModel>> doctorsBloc = GenericBloc([]);

  // methods
  fetchData(List<DoctorModel> doctorsList) async {
    doctorsBloc.onUpdateData(doctorsList);
  }

}