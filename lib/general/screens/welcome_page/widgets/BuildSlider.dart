part of 'WelcomeWidgetImports.dart';

class BuildSlider extends StatelessWidget {
  final WelcomePageData welcomePageData;
  const BuildSlider({Key? key, required this.welcomePageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 0.95,
        enlargeCenterPage: true,
        onPageChanged: (index, page) {
          welcomePageData.dotsBloc.onUpdateData(index.toDouble());
        },
      ),
      carouselController: welcomePageData.carouselController,
      items: welcomePageData.data
          .map((e) => BuildSliderImage(image: e))
          .toList(),
    );
  }
}
