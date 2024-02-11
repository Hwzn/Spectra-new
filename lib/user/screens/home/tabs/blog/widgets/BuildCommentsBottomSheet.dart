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
          if (state is GenericUpdateState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BuildBlogActions(
                            icon: Icons.favorite,
                            title: "${widget.likesCount}  ${tr(context, 'likes')}"),
                        BuildBlogActions(
                            icon: Icons.comment,
                            title: "${state.data.length}  ${tr(context, 'comments')}"),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Visibility(
                    visible: state.data.isNotEmpty,
                    replacement: Center(
                      child: MyText(
                        title: tr(context, 'noComments'),
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
                          blogData: widget.blogData,
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
                        hint: tr(context, 'writeComment'),
                        controller: widget.blogData.comment,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        action: TextInputAction.done,
                        type: TextInputType.text,
                        validate: (value) => value!.noValidate(),
                        radius: 20,
                        enableBorderColor: MyColors.lightGrey,
                        suffixIcon: InkWell(
                          onTap: () {
                            if(widget.blogData.isEditComment == false){
                              widget.blogData.addComment(context, widget.blogId);
                            } else {
                              widget.blogData.editComment(context, widget.blogData.commentId);
                            }
                          },
                          child: Icon(
                            MdiIcons.arrowRightCircle,
                            color: MyColors.primary,
                            size: 30,
                          ),
                        ),
                        onSubmit: () =>
                            widget.blogData.addComment(context, widget.blogId),
                      ),
                    ),
                    // const SizedBox(width: 10),
                    // Transform.rotate(
                    //   angle: 135 * math.pi / 180,
                    //   alignment: Alignment.center,
                    //   child: Icon(
                    //     Icons.attachment,
                    //     color: MyColors.lightGrey,
                    //     size: 25,
                    //   ),
                    // ),
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
