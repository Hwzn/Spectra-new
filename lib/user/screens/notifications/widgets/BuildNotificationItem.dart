part of 'NotificationsWidgetsImports.dart';

class BuildNotificationItem extends StatelessWidget {
  final NotificationsModel model;
  final NotificationsData notificationsData;
  final int index;

  const BuildNotificationItem(
      {Key? key,
      required this.model,
      required this.notificationsData,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (v) => notificationsData.deleteItem(
                context: context,
                id: model.data.dataId.toString(),
                index: index,
              ),
              backgroundColor: Colors.red,
              foregroundColor: MyColors.white,
              icon: Icons.delete,
              label: tr(context, 'delete'),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              spacing: 10,
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: MyColors.greyWhite,
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                title: model.title,
                size: 11,
                color: MyColors.primary,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: MyText(
                  title: model.body,
                  size: 12,
                  color: MyColors.blackOpacity,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.access_time_sharp,
                    color: MyColors.lightGrey,
                    size: 17,
                  ),
                  const SizedBox(width: 5),
                  MyText(
                    title: model.time,
                    size: 10,
                    color: MyColors.lightGrey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
