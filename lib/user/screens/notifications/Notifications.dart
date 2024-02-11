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
      appBar: DefaultAppBar(title: tr(context, 'notifications')),
      body: BlocBuilder<GenericBloc<List<NotificationsModel>>,
          GenericState<List<NotificationsModel>>>(
        bloc: notificationsData.notificationsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => notificationsData.deleteAll(context),
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                      bottom: 10,
                    ),
                    child: MyText(
                      title: tr(context, 'deleteAll'),
                      color: Colors.red,
                      size: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: Visibility(
                    visible: state.data.isNotEmpty,
                    replacement: Center(
                      child: MyText(
                        title: tr(context, 'noNotifications'),
                        color: MyColors.blackOpacity,
                        size: 12,
                      ),
                    ),
                    child: AnimationLimiter(
                      child: ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 375),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: BuildNotificationItem(
                                model: state.data[index],
                                notificationsData: notificationsData,
                                index: index,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
