part of 'BlogImports.dart';

class BlogData {
  // controllers
  final TextEditingController comment = TextEditingController();

  // blocs
  final GenericBloc<List<BlogModel>> blogsBloc = GenericBloc([]);
  final GenericBloc<List<CommentModel>> commentsBloc = GenericBloc([]);

  // variables
  bool isEditComment = false;
  var commentId = 0;

  // methods
  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getBlogs();
    blogsBloc.onUpdateData(data);
  }

  fetchComments(BuildContext context, int id) async {
    var data = blogsBloc.state.data.firstWhere((element) => element.id == id);
    commentsBloc.onUpdateData(data.comments);
  }

  addPostAndRefresh(BuildContext context) async {
    var result = await AutoRouter.of(context).push(AddPostRoute());
    if (result == true) {
      fetchData(context);
    }
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
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }

  addComment(BuildContext context, int blogId) async {
    var user = context.read<UserCubit>().state.model;
    if (comment.text.isNotEmpty) {
      await UserRepository(context).addBlogComment(blogId, comment.text);
      commentsBloc.state.data.add(CommentModel(
        id: 0,
        userId: user.id,
        userName: user.name,
        createdAt: "Just now",
        comment: comment.text,
        likesCount: 0,
        userImage: user.image,
      ));
      commentsBloc.onUpdateData(commentsBloc.state.data);
      comment.clear();
    } else {
      CustomToast.showSimpleToast(msg: "Add comment please");
    }
  }

  likeOrUnlike(BuildContext context, int id) async {
    await UserRepository(context).likeOrUnlike(id);
    var blogsList = blogsBloc.state.data;
    BlogModel model = blogsList.firstWhere((element) => element.id == id);
    if (model.isLiked) {
      model.isLiked = false;
      model.likesCount = model.likesCount - 1;
    } else {
      model.isLiked = true;
      model.likesCount = model.likesCount + 1;
    }
    blogsBloc.onUpdateData(blogsList);
  }

  viewImages(BuildContext context, List<DropDownModel> images) {
    var imageList = [];
    images.forEach((e) {
      imageList.add(e.image);
    });
    AutoRouter.of(context).push(ImageZoomRoute(images: imageList));
  }

  editComment(BuildContext context, int id) async {
    if (comment.text.isNotEmpty) {
      await UserRepository(context).editComment(id, comment.text);
      commentsBloc.state.data
          .firstWhere((element) => element.id == id)
          .comment = comment.text;
      commentsBloc.onUpdateData(commentsBloc.state.data);
      comment.clear();
      isEditComment = false;
      commentId = 0;
    } else {
      CustomToast.showSimpleToast(msg: "Comment cannot be empty");
    }
  }

  deleteComment(BuildContext context, CommentModel model) async {
    await UserRepository(context).deleteComment(model.id);
    commentsBloc.state.data.remove(model);
    commentsBloc.onUpdateData(commentsBloc.state.data);
  }
}
