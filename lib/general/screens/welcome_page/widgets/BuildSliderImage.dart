part of 'WelcomeWidgetImports.dart';

class BuildSliderImage extends StatelessWidget {
  final String image;

  const BuildSliderImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.fill,
          colorFilter: const ColorFilter.mode(
            Color(0xff635971),
            BlendMode.hardLight,
          ),
        ),
      ),
    );
  }
}
