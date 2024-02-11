part of 'AccountWidgetsImports.dart';

class BuildAccountHeader extends StatelessWidget {
  const BuildAccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;
    return Row(
      children: [
        CachedImage(
          url: user.image,
          height: 50,
          width: 50,
          haveRadius: false,
          boxShape: BoxShape.circle,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                title: tr(context, 'hello'),
                color: MyColors.white,
                size: 12,
                fontWeight: FontWeight.normal,
              ),
              MyText(
                title: user.name,
                color: MyColors.white,
                size: 13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
