part of 'AddPostWidgetsImports.dart';

class BuildPostType extends StatelessWidget {
  final String title;
  final bool? selected;

  const BuildPostType({Key? key, required this.title, this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .28,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      decoration: BoxDecoration(
        color: selected == true ? MyColors.primary : MyColors.lightGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: MyText(
        title: title,
        color: selected == true ? MyColors.white : MyColors.blackOpacity,
        size: 11,
      ),
    );
  }
}
