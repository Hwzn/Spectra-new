part of 'HomeWidgetsImports.dart';

class BuildTabBarItem extends StatelessWidget {
  final bool active;
  final int index;
  final String? title;
  final HomeData? homeData;
  final ProvHomeData? provHomeData;

  const BuildTabBarItem({
    this.homeData,
    required this.active,
    required this.index,
    this.title,
    this.provHomeData,
  });

  @override
  Widget build(BuildContext context) {
    Color color = active ? MyColors.primary : MyColors.grey;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Visibility(
            visible: active,
            replacement: Icon(
              homeData != null
                  ? homeData?.tabs(context)[index].iconData
                  : provHomeData?.tabs(context)[index].iconData,
              color: color,
              size: 25,
            ),
            child: Container(
              height: 35,
              width: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(Res.bottomShape))),
              child: Icon(
                homeData != null
                    ? homeData?.tabs(context)[index].iconData
                    : provHomeData?.tabs(context)[index].iconData,
                color: MyColors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(height: 2),
          MyText(
            title: homeData != null
                ? homeData?.tabs(context)[index].title ?? ''
                : provHomeData?.tabs(context)[index].title ?? '',
            color: color,
            size: 9,
          )
        ],
      ),
    );
  }
}
