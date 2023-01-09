part of 'HomeWidgetsImports.dart';

class BuildTabBarBody extends StatelessWidget {
  final HomeData homeData;
  final int? index;

  const BuildTabBarBody({required this.homeData, this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: homeData.homeTabCubit,
      builder: (_, state) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: 5,
          tabBuilder: (int index, bool isActive) {
            return BuildTabBarItem(
              index: index,
              active: isActive,
              homeData: homeData,
            );
          },
          backgroundColor: MyColors.white,
          activeIndex: state.data,
          splashSpeedInMilliseconds: 300,
          height: 70,
          gapLocation: GapLocation.none,
          splashColor: MyColors.primary,
          onTap: (index) => homeData.onChangePage(index),
        );
      },
    );
  }
}
