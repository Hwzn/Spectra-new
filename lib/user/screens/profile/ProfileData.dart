part of 'ProfileImports.dart';

class ProfileData {
  // controllers
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();

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