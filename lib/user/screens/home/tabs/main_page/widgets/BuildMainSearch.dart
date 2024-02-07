part of 'MainWidgetsImports.dart';

class BuildMainSearch extends StatelessWidget {
  final MainPageData mainPageData;
  const BuildMainSearch({Key? key, required this.mainPageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.16,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        action: TextInputAction.search,
        type: TextInputType.text,
        validate: (value) => value?.noValidate(),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        hint: "Search for a doctor",
        prefixIcon: Icon(
          Icons.search,
          color: MyColors.primary,
        ),
        suffixIcon: InkWell(
          onTap: ()=> mainPageData.openFilter(context),
          child: Container(
            padding: const EdgeInsets.all(15),
            height: 20, width: 20,
            child: Image.asset(Res.filter),
          ),
        ),
      ),
    );
  }
}
