part of 'BlogWidgetsImports.dart';

class BuildPostItem extends StatelessWidget {
  final bool isArticle;
  final BlogData blogData;
  const BuildPostItem({Key? key, this.isArticle = false, required this.blogData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MyColors.greyWhite,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          const BuildPostTitle(),
          Visibility(
            visible: !isArticle,
            child: Column(
              children: const [
                BuildPostImages(),
                BuildMap(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: MyText(
              title: "Post content here, Post content here, Post content here, Post content here, Post content here,",
              color: MyColors.black,
              size: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          Divider(color: MyColors.grey.withOpacity(0.2)),
          InkWell(
            onTap: ()=> blogData.viewComments(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BuildBlogActions(icon: Icons.favorite, title: "20  Likes"),
                BuildBlogActions(icon: Icons.comment, title: "5  Comments"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
