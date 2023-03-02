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
          BlocBuilder<GenericBloc<List<DropDownModel>>,
              GenericState<List<DropDownModel>>>(
            bloc: addPostData.categoriesBloc,
            builder: (context, state) {
              return Wrap(
                spacing: 5,
                direction: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  state.data.length,
                  (index) => BuildPostType(
                    title: state.data[index].name ?? '',
                    selected: state.data[index].selected,
                  ),
                ),
              );
            },
          ),
          const BuildPostButtons(),
        ],
      ),
    );
  }
}
