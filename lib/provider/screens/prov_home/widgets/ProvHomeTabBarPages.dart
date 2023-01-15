part of 'ProvHomeWidgetsImports.dart';

class ProvHomeTabBarPages extends StatelessWidget {
  final ProvHomeData provHomeData;
  const ProvHomeTabBarPages({Key? key, required this.provHomeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: provHomeData.homeTabCubit,
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
          child: provHomeData.tabsView[state.data],
        );
      },
    );
  }
}
