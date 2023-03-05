part of 'LocationWidgetsImports.dart';

class MarkerDetailsButtonSheet extends StatelessWidget {
  final String title ;
  const MarkerDetailsButtonSheet({
    Key? key,
    required this.address, required this.title,
  }) : super(key: key);

  final String address;

  @override
  Widget build(BuildContext context) {
    return TranslateAnimation(
      duration: const Duration(milliseconds: 800),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15))),
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            MyText(
                title: address,
                color: MyColors.black,
                size: 12,
                fontWeight: FontWeight.bold),
            MyText(
                title: title,
                //"${latLng.latitude},${latLng.longitude}"
                color: MyColors.grey,
                size: 10,
                fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
