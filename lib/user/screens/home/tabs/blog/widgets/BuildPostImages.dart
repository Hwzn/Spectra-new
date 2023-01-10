part of 'BlogWidgetsImports.dart';

class BuildPostImages extends StatelessWidget {
  const BuildPostImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        2,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CachedImage(
            url:
            "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
            height: 150,
            width: MediaQuery.of(context).size.width * 0.4 - 10,
            haveRadius: true,
            borderRadius: BorderRadius.circular(10),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
