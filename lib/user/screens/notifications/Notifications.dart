part of 'NotificationsImports.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  NotificationsData notificationsData = NotificationsData();

  @override
  void initState() {
    notificationsData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Notifications"),
      body: BlocBuilder<GenericBloc<List<NotificationsModel>>,
          GenericState<List<NotificationsModel>>>(
        bloc: notificationsData.notificationsBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: MyText(
                title: "No Notifications",
                color: MyColors.blackOpacity,
                size: 12,
              ),
              child: AnimationLimiter(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: state.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: BuildNotificationItem(
                          model: state.data[index],
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
