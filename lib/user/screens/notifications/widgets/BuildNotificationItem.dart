part of 'NotificationsWidgetsImports.dart';

class BuildNotificationItem extends StatelessWidget {
  const BuildNotificationItem({Key? key}) : super(key: key);

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
              onPressed: null,
              backgroundColor: Colors.red,
              foregroundColor: MyColors.white,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              spacing: 10,
            ),
          ],
        ),
        child: Container(
          // margin: const EdgeInsets.symmetric(horizontal: 5),
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
                title:
                    "Notification content here, Notification content here, Notification content here, Notification content here, Notification content here,",
                size: 12,
                color: MyColors.blackOpacity,
              ),
              const SizedBox(height: 30),
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
                    title: "13 hours left",
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
