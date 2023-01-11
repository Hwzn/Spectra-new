part of 'BlogImports.dart';

class BlogData {
  // controllers
  final TextEditingController comment = TextEditingController();

  // methods
  void viewComments(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildCommentsBottomSheet(blogData: this);
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
    );
  }

}
