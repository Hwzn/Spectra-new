part of 'AddPostImports.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  AddPostData addPostData = AddPostData();

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
            max: 10,
            hint: "What's on your mind ?",
            controller: addPostData.post,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            action: TextInputAction.done,
            type: TextInputType.text,
            validate: (value) => value!.noValidate(),
            enableBorderColor: Colors.transparent,
            focusBorderColor: Colors.transparent,
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              BuildPostType(title: "Article", selected: true),
              BuildPostType(title: "Lost animal"),
              BuildPostType(title: "Found animal"),
            ],
          ),
          const BuildPostButtons(),
        ],
      ),
    );
  }
}
