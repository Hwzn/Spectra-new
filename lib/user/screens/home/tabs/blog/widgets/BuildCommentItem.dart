part of 'BlogWidgetsImports.dart';

class BuildCommentItem extends StatelessWidget {
  const BuildCommentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(15),
      color: MyColors.grey.withOpacity(0.15),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: null,
              backgroundColor: Colors.green,
              foregroundColor: MyColors.white,
              icon: Icons.edit,
              label: 'Edit',
              padding: EdgeInsets.zero,
            ),
            SlidableAction(
              onPressed: null,
              backgroundColor: Colors.red,
              foregroundColor: MyColors.white,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              padding: EdgeInsets.zero,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CachedImage(
                  url: "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
                  height: 30,
                  width: 30,
                  haveRadius: false,
                  boxShape: BoxShape.circle,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: MyText(
                    title: "Aya Hamed",
                    color: MyColors.black,
                    size: 12,
                  ),
                ),
                MyText(
                  title: "5 hours ago",
                  color: MyColors.grey,
                  size: 9,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: MyText(
                title: "Comment content here, Comment content here, Comment content here, Comment content here,.",
                color: MyColors.blackOpacity,
                size: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
