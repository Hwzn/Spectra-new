part of 'ProfileImports.dart';

class ProfileData {
  // controllers
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();

  // blocs
  final GenericBloc<File?> imageBloc = GenericBloc(null);

  // methods
  fetchData(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    name.text = user.name;
    phone.text = user.phone;
    email.text = user.email;
  }

  setProfileImage() async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      imageBloc.onUpdateData(image);
    }
  }

  updateProfile(BuildContext context) async {
    LoadingDialog.showLoadingDialog();
    UpdateProfileModel model = UpdateProfileModel(
      name: name.text,
      email: email.text,
      phone: phone.text,
      image: imageBloc.state.data,
    );
    await UserRepository(context).updateProfile(model);
    EasyLoading.dismiss();
  }

}