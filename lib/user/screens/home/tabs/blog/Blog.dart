part of 'BlogImports.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  BlogData blogData = BlogData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(
        title: "Blog",
        showLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.symmetric(horizontal: 20),
            icon: Icon(
              MdiIcons.plusCircle,
              color: Colors.grey[300],
              size: 28,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: const [
          BuildPostItem(),
          BuildPostItem(isArticle: true),
        ],
      ),
    );
  }
}
