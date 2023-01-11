part of 'BlogWidgetsImports.dart';

class BuildCommentsBottomSheet extends StatelessWidget {
  final BlogData blogData;

  const BuildCommentsBottomSheet({Key? key, required this.blogData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BuildBlogActions(icon: Icons.favorite, title: "20  Likes"),
              BuildBlogActions(icon: Icons.comment, title: "5  Comments"),
            ],
          ),
          Flexible(
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
            children: List.generate(10, (index) => const BuildCommentItem()),
          ),),
          Row(
            children: [
              Expanded(
                child: GenericTextField(
                  fieldTypes: FieldTypes.normal,
                  hint: "Write a comment",
                  controller: blogData.comment,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  action: TextInputAction.done,
                  type: TextInputType.text,
                  validate: (value) => value!.noValidate(),
                  radius: 20,
                  enableBorderColor: MyColors.lightGrey,
                  suffixIcon: Transform.rotate(
                    angle: 135 * math.pi / 180,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.attachment,
                      color: MyColors.lightGrey,
                      size: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Icon(
                MdiIcons.arrowRightCircle,
                color: MyColors.primary,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
