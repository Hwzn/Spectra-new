part of 'BlogImports.dart';

class BlogData {
  // controllers
  final TextEditingController comment = TextEditingController();

  // methods
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
