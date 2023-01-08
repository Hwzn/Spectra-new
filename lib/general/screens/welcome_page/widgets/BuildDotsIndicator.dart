part of 'WelcomeWidgetImports.dart';

class BuildDotsIndicator extends StatelessWidget {
  final WelcomePageData welcomePageData;
  const BuildDotsIndicator({Key? key, required this.welcomePageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<double>, GenericState<double>>(
      bloc: welcomePageData.dotsBloc,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: DotsIndicator(
            dotsCount: welcomePageData.data.length,
            position: state.data,
            decorator: const DotsDecorator(
              activeColor: Color(0xff635971),
              size: Size(12, 12),
              activeSize: Size(12, 12),
            ),
          ),
        );
      },
    );
  }
}
