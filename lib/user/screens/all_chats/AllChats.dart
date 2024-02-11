part of 'AllChatsImports.dart';

class AllChats extends StatefulWidget {
  const AllChats({Key? key}) : super(key: key);

  @override
  State<AllChats> createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  AllChatsData allChatsData = AllChatsData();

  @override
  void initState() {
    allChatsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: tr(context, 'chats')),
      body: BlocBuilder<GenericBloc<List<ChatModel>>,
          GenericState<List<ChatModel>>>(
        bloc: allChatsData.chatsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                child: MyText(
                  title: tr(context, 'noChats'),
                  color: MyColors.primary,
                  size: 12,
                ),
              ),
              child: AnimationLimiter(
                child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemCount: state.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: BuildChatItem(
                            model: state.data[index],
                          ),
                        ),
                      ),
                    );
                  },
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
