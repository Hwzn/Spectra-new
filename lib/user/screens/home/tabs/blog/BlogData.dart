part of 'BlogImports.dart';

class BlogData {
  // controllers
  final TextEditingController comment = TextEditingController();

  // blocs
  final GenericBloc<List<BlogModel>> blogsBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getBlogs();
    blogsBloc.onUpdateData(data);
  }

  void viewComments(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return BuildCommentsBottomSheet(blogData: this);
      },
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.6),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }
}
