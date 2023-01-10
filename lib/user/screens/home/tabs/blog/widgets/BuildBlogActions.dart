part of 'BlogWidgetsImports.dart';

class BuildBlogActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const BuildBlogActions({Key? key, required this.icon, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(icon, size: 20, color: MyColors.grey),
          const SizedBox(width: 7),
          MyText(
            title: title,
            color: MyColors.blackOpacity,
            size: 12,
          ),
        ],
      ),
    );
  }
}
