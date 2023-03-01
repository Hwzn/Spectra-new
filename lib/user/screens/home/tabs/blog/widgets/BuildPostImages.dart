part of 'BlogWidgetsImports.dart';

class BuildPostImages extends StatelessWidget {
  final List<DropDownModel> imagesList;

  const BuildPostImages({Key? key, required this.imagesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        imagesList.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CachedImage(
            url: imagesList[index].image ?? '',
            // "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
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
