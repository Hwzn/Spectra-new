part of 'ProvProfileImports.dart';

class ProvProfileData {
  // bloc
  final GenericBloc<File?> profileCubit = GenericBloc(null);

  // methods
  setProfileImage() async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      profileCubit.onUpdateData(image);
    }
  }

}