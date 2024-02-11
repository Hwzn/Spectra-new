part of 'BlogImports.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  BlogData blogData = BlogData();

  @override
  void initState() {
    blogData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(
        title: tr(context, 'blog'),
        showLeading: false,
        actions: [
          IconButton(
            onPressed: () => blogData.addPostAndRefresh(context),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            icon: Icon(
              MdiIcons.plusCircle,
              color: Colors.grey[300],
              size: 28,
            ),
          ),
        ],
      ),
      body: BlocBuilder<GenericBloc<List<BlogModel>>,
          GenericState<List<BlogModel>>>(
        bloc: blogData.blogsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                child: MyText(
                  title: tr(context, 'noBlogs'),
                  color: MyColors.primary,
                  size: 12,
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: state.data.length,
                itemBuilder: (_, index) => BuildPostItem(
                  blogData: blogData,
                  model: state.data[index],
                ),
              ),
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
