part of 'AddPostWidgetsImports.dart';

class BuildUserInfo extends StatefulWidget {
  const BuildUserInfo({Key? key}) : super(key: key);

  @override
  State<BuildUserInfo> createState() => _BuildUserInfoState();
}

class _BuildUserInfoState extends State<BuildUserInfo> {
  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Row(
        children: [
          CachedImage(
            url: user.image,
            height: 40,
            width: 40,
            haveRadius: false,
            boxShape: BoxShape.circle,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          MyText(
            title: user.name,
            color: MyColors.black,
            size: 12,
          ),
        ],
      ),
    );
  }
}
