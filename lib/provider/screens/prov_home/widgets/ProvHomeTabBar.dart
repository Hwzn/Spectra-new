part of 'ProvHomeWidgetsImports.dart';

class ProvHomeTabBar extends StatelessWidget {
  final ProvHomeData provHomeData;

  const ProvHomeTabBar({Key? key, required this.provHomeData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: provHomeData.homeTabCubit,
      builder: (_, state) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: 5,
          tabBuilder: (int index, bool isActive) {
            return BuildTabBarItem(
              index: index,
              active: isActive,
              provHomeData: provHomeData,
            );
          },
          backgroundColor: MyColors.white,
          activeIndex: state.data,
          splashSpeedInMilliseconds: 300,
          height: 70,
          gapLocation: GapLocation.none,
          splashColor: MyColors.primary,
          onTap: (index) => provHomeData.onChangePage(index),
        );
      },
    );
  }
}
