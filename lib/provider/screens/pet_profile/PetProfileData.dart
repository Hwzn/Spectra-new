part of 'PetProfileImports.dart';

class PetProfileData {
  // blocs
  final GenericBloc<PetInfoModel?> infoBloc = GenericBloc(null);

  // methods
  fetchData(BuildContext context, int id) async {
    var data = await DoctorRepository(context).getPetInfo(id);
    infoBloc.onUpdateData(data);
  }

}