part of 'ProvMainImports.dart';

class ProvMainData {
  // blocs
  final GenericBloc<ProvHomeModel?> homeBloc = GenericBloc(null);

  // methods
  fetchData(BuildContext context) async {
    var data = await DoctorRepository(context).getProvHome();
    homeBloc.onUpdateData(data);
  }

}