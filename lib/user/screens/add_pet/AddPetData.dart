part of 'AddPetImports.dart';

class AddPetData {
  // controllers
  final TextEditingController petName = TextEditingController();
  final TextEditingController details = TextEditingController();

  // blocs
  final GenericBloc<File?> imageBloc = GenericBloc(null);
  final GenericBloc<PetFileModel> filesBloc =
      GenericBloc(PetFileModel(files: [], images: []));

  // variables
  List<File> uploadList = [];

  // methods
  addPet(BuildContext context) async {
    if(imageBloc.state.data == null){
      CustomToast.showSimpleToast(msg: "Please add pet image");
      return;
    }
    if(petName.text.isEmpty){
      CustomToast.showSimpleToast(msg: "Please add pet name");
      return;
    }
    if(details.text.isEmpty){
      CustomToast.showSimpleToast(msg: "Please add pet details");
      return;
    }
    AddPetModel model = AddPetModel(
      image: imageBloc.state.data ?? File(''),
      details: details.text,
      name: petName.text,
      files: uploadList,
    );
    await UserRepository(context).addPet(model);
    AutoRouter.of(context).pop(true);
  }

  setProfileImage() async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      imageBloc.onUpdateData(image);
    }
  }

  uploadFiles(BuildContext context) async {
    FilePickerResult? file = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: true,
    );
    if (file != null) {
      var filesList = filesBloc.state.data;
      List<File> files = file.paths.map((path) => File(path!)).toList();
      filesList.files.addAll(files);
      filesBloc.onUpdateData(filesList);
      uploadList.addAll(files);
    }
    Navigator.pop(context);
  }

  uploadImages(BuildContext context) async {
    Navigator.pop(context);
    var imagesList = filesBloc.state.data;
    var images = await HelperMethods.getMultiImages(10);
    imagesList.images.addAll(images);
    filesBloc.onUpdateData(imagesList);
    uploadList.addAll(images);
  }

  deleteFile(int index) {
    var filesList = filesBloc.state.data;
    filesList.files.removeAt(index);
    filesBloc.onUpdateData(filesList);
  }

  deleteImage(int index) {
    var filesList = filesBloc.state.data;
    filesList.images.removeAt(index);
    filesBloc.onUpdateData(filesList);
  }

  showFilesOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return BuildOptionsDialog(addPetData: this);
      },
    );
  }
}
