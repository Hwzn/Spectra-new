part of 'BlogWidgetsImports.dart';

class BuildCommentsBottomSheet extends StatefulWidget {
  final BlogData blogData;
  final num likesCount;
  final int blogId;

  const BuildCommentsBottomSheet(
      {Key? key,
      required this.blogData,
      required this.likesCount,
      required this.blogId})
      : super(key: key);

  @override
  State<BuildCommentsBottomSheet> createState() =>
      _BuildCommentsBottomSheetState();
}

class _BuildCommentsBottomSheetState extends State<BuildCommentsBottomSheet> {
  @override
  void initState() {
    widget.blogData.fetchComments(context, widget.blogId);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<GenericBloc<List<CommentModel>>,
          GenericState<List<CommentModel>>>(
        bloc: widget.blogData.commentsBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: ()=> Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BuildBlogActions(
                            icon: Icons.favorite,
                            title: "${widget.likesCount}  Likes"),
                        BuildBlogActions(
                            icon: Icons.comment,
                            title: "${state.data.length}  Comments"),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Visibility(
                    visible: state.data.isNotEmpty,
                    replacement: Center(
                      child: MyText(
                        title: "No Comments",
                        color: MyColors.primary,
                        size: 12,
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 10),
                      children: List.generate(
                        state.data.length,
                            (index) => BuildCommentItem(
                              model: state.data[index],
                            ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: GenericTextField(
                        fieldTypes: FieldTypes.normal,
                        hint: "Write a comment",
                        controller: widget.blogData.comment,
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
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
