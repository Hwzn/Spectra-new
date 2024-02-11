part of 'AddPostImports.dart';

class AddPostData {
  // controllers
  final TextEditingController post = TextEditingController();

  // blocs
  final GenericBloc<List<DropDownModel>> categoriesBloc = GenericBloc([]);
  final GenericBloc<List<File>> imagesBloc = GenericBloc([]);
  final LocationCubit locCubit = LocationCubit();

  // variables
  var address;
  var lat;
  var lng;

  // methods
  fetchCategories(BuildContext context) async {
    var data = await UserRepository(context).getCategories();
    if(data.isNotEmpty){
      data.first.selected = true;
    }
    categoriesBloc.onUpdateData(data);
  }

  postBlog(BuildContext context) async {
    if(post.text.isEmpty){
      CustomToast.showSimpleToast(msg: tr(context, 'addBlogContent'));
      return;
    }
    var selectedCat =
        categoriesBloc.state.data.firstWhere((e) => e.selected == true);
    AddBlogModel model = AddBlogModel(
      categoryId: selectedCat.id ?? 0,
      content: post.text,
      images: imagesBloc.state.data,
      address: address,
      lat: lat,
      lng: lng,
    );
    var result = await UserRepository(context).addBlog(model);
    if(result == true){
      AutoRouter.of(context).pop(true);
    }
  }

  void getPostImages() async {
    print("Getting post images");
    var images = await HelperMethods.getMultiImages(2);
    print("${images.length}");
    if (images.isNotEmpty) {
      imagesBloc.onUpdateData(images);
    }
  }

  selectCategory(int index) async {
    List<DropDownModel> list = categoriesBloc.state.data;
    list.forEach((element) {
      element.selected = false;
    });
    list[index].selected = true;
    categoriesBloc.onUpdateData(list);
  }

  removeImage(int index) async {
    List<File> list = imagesBloc.state.data;
    list.removeAt(index);
    imagesBloc.onUpdateData(list);
  }
}
