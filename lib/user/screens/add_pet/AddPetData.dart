part of 'AddPetImports.dart';

class AddPetData {
  // controllers
  final TextEditingController petName = TextEditingController();

  // blocs
  final GenericBloc<File?> imageBloc = GenericBloc(null);

  // methods
  setProfileImage() async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      imageBloc.onUpdateData(image);
    }
  }

}