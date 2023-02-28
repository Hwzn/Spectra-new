part of 'SpecializationImports.dart';

class SpecializationData {
  // blocs
  final GenericBloc<List<DoctorModel>> doctorsBloc = GenericBloc([]);

  fetchData(BuildContext context, int id) async {
    var data = await UserRepository(context).getDoctorsBySpecId(id);
    doctorsBloc.onUpdateData(data);
  }

}