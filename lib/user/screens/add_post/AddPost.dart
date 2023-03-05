part of 'AddPostImports.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  AddPostData addPostData = AddPostData();

  @override
  void initState() {
    addPostData.fetchCategories(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: const DefaultAppBar(title: "Post"),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          const BuildUserInfo(),
          GenericTextField(
            fieldTypes: FieldTypes.rich,
            max: 12,
            hint: "What's on your mind ?",
            controller: addPostData.post,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            action: TextInputAction.done,
            type: TextInputType.text,
            validate: (value) => value!.noValidate(),
            enableBorderColor: Colors.transparent,
            focusBorderColor: Colors.transparent,
          ),
          BlocConsumer<LocationCubit, LocationState>(
            bloc: addPostData.locCubit,
            listener: (context, state) {
              addPostData.address = state.model?.address ?? "";
              addPostData.lat = state.model?.lat.toString();
              addPostData.lng = state.model?.lng.toString();
            },
            builder: (context, state) {
              return Visibility(
                visible: addPostData.address != null,
                child: Container(
                  margin: const EdgeInsets.symmetric
                    (horizontal: 20, vertical: 10),
                  child: MyText(
                    title: "Location: ${state.model?.address ?? ""}",
                    color: MyColors.black,
                    size: 12,
                  ),
                ),
              );
            },
          ),
          BuildAddPostImages(addPostData: addPostData),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          BuildPostCats(addPostData: addPostData),
          BuildPostButtons(addPostData: addPostData),
        ],
      ),
    );
  }
}
