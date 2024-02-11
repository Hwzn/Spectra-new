part of 'ProvRegisterWidgetsImports.dart';

class BuildDoctorItem extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  final DropDownModel model;
  final bool showAdd;
  const BuildDoctorItem(
      {Key? key, required this.provRegisterData, required this.model, this.showAdd = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      color: MyColors.greyWhite,
      child: Row(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.white,
              image: const DecorationImage(
                image: AssetImage(Res.logo),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: MyText(
              title: model.name ?? '',
              color: MyColors.blackOpacity,
              size: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Visibility(
            visible: showAdd,
            replacement: InkWell(
              onTap: ()=> provRegisterData.removeDoctor(context, model),
              child: const Icon(Icons.delete_forever, color: Colors.red),
            ),
            child: InkWell(
              onTap: ()=> provRegisterData.chooseDoctor(context, model),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: MyColors.primary,
                child: MyText(
                  title: tr(context, 'add'),
                  color: MyColors.white,
                  size: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
