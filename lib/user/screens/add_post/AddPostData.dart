part of 'AddPostImports.dart';

class AddPostData {
  // controllers
  final TextEditingController post = TextEditingController();

  // blocs
  final GenericBloc<List<DropDownModel>> categoriesBloc = GenericBloc([]);

  // methods
  fetchCategories(BuildContext context) async {
    var data= await UserRepository(context).getCategories();
    categoriesBloc.onUpdateData(data);
  }

}
