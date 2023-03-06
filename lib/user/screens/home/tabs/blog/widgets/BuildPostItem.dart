part of 'BlogWidgetsImports.dart';

class BuildPostItem extends StatelessWidget {
  final BlogData blogData;
  final BlogModel model;

  const BuildPostItem({Key? key, required this.blogData, required this.model})
      : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildPostTitle(model: model),
          InkWell(
            onTap: ()=> blogData.viewImages(context, model.blogImages),
            child: BuildPostImages(imagesList: model.blogImages),
          ),
          Visibility(
            visible: model.lat != null && model.lng != null,
            child: BuildMap(
              lat: model.lat ?? '',
              lng: model.lng ?? '',
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: MyText(
              title: model.content,
              color: MyColors.black,
              size: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          Divider(color: MyColors.grey.withOpacity(0.2)),
          InkWell(
            onTap: () =>
                blogData.viewComments(context, model.likesCount, model.id),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => blogData.likeOrUnlike(context, model.id),
                  child: BuildBlogActions(
                    icon: Icons.favorite,
                    title: "${model.likesCount}  Likes",
                    likeColor: model.isLiked ? Colors.red : MyColors.grey,
                  ),
                ),
                BuildBlogActions(
                    icon: Icons.comment,
                    title: "${model.commentsCount}  Comments"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
