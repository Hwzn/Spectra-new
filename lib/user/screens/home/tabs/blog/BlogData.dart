part of 'BlogImports.dart';

class BlogData {
  // controllers
  final TextEditingController comment = TextEditingController();

  // blocs
  final GenericBloc<List<BlogModel>> blogsBloc = GenericBloc([]);
  final GenericBloc<List<CommentModel>> commentsBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getBlogs();
    blogsBloc.onUpdateData(data);
  }

  fetchComments(BuildContext context, int id) async {
    var data = await UserRepository(context).getBlogComments(id);
    commentsBloc.onUpdateData(data);
  }

  void viewComments(BuildContext context, num likes, int blogId) async {
    showBottomSheet(
      context: context,
      enableDrag: true,
      builder: (_) {
        return BuildCommentsBottomSheet(
          blogData: this,
          likesCount: likes,
          blogId: blogId,
        );
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
