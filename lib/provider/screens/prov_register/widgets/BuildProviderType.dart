part of 'ProvRegisterWidgetsImports.dart';

class BuildProviderType extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  final String title;
  final int type;
  final bool selected;
  const BuildProviderType({Key? key, required this.provRegisterData, required this.title, required this.type, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> provRegisterData.typeBloc.onUpdateData(type),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: selected ? const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xff635971),
                Color(0xff957785),
              ]) : null,
        ),
        alignment: Alignment.center,
        child: MyText(
          title: title,
          size: 13,
          color: selected ? MyColors.white : MyColors.grey,
        ),
      ),
    );
  }
}
