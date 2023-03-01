part of 'BlogWidgetsImports.dart';

class BuildPostItem extends StatelessWidget {
  final bool isArticle;
  final BlogData blogData;
  final BlogModel model;
  const BuildPostItem({Key? key, this.isArticle = false, required this.blogData, required this.model}) : super(key: key);

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
          BuildPostTitle(model: model),
          Visibility(
            visible: !isArticle,
            child: Column(
              children: [
                BuildPostImages(imagesList: model.blogImages),
                BuildMap(
                  lat: model.lat,
                  lng: model.lng,
                ),
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
              children: [
                BuildBlogActions(icon: Icons.favorite, title: "${model.likesCount}  Likes"),
                BuildBlogActions(icon: Icons.comment, title: "${model.commentsCount}  Comments"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
