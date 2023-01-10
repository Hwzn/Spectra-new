part of 'AllChatsWidgetsImports.dart';

class BuildChatItem extends StatelessWidget {
  const BuildChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: MyColors.greyWhite,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const CachedImage(
                  url:
                      "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
                  height: 50,
                  width: 50,
                  haveRadius: false,
                  boxShape: BoxShape.circle,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      title: "Aya Hamed",
                      color: MyColors.black,
                      size: 12,
                    ),
                    const SizedBox(height: 5),
                    MyText(
                      title: "Hello, how are you ? ",
                      color: MyColors.grey,
                      size: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.access_time_sharp,
                size: 17,
                color: MyColors.lightGrey,
              ),
              const SizedBox(width: 5),
              MyText(
                title: "3 Hours ago",
                color: MyColors.lightGrey,
                size: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
