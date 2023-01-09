part of 'HomeWidgetsImports.dart';

class BuildTabBarPages extends StatelessWidget {
  final HomeData homeData;

  const BuildTabBarPages({required this.homeData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: homeData.homeTabCubit,
      builder: (context, state) {
        return PageTransitionSwitcher(
          transitionBuilder:
              (child, primaryAnimation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: homeData.tabsView[state.data],
        );
      },
    );
  }
}
