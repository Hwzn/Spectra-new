part of 'ProvRegisterWidgetsImports.dart';

class BuildDoctorsDropDown extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  const BuildDoctorsDropDown({Key? key, required this.provRegisterData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownTextField<DropDownModel>(
          dropKey: provRegisterData.specialization,
          hint: tr(context, 'specialization'),
          selectedItem: provRegisterData.selectedSpecialization,
          margin: const EdgeInsets.symmetric(vertical: 10),
          validate: (value){},
          onChange: (DropDownModel? model) =>
              provRegisterData.setSelectISpecialization(model),
          useName: true,
          searchHint: tr(context, 'search'),
          finData: (data) => provRegisterData.getSpecs(context),
          enableColor: MyColors.greyWhite,
          fillColor: MyColors.white,
        ),
        DropdownTextField<DropDownModel>(
          dropKey: provRegisterData.centerName,
          hint: "${tr(context, 'centerName')} (${tr(context, 'ifYouHave')})",
          selectedItem: provRegisterData.selectedCenter,
          margin: const EdgeInsets.symmetric(vertical: 10),
          validate: (value){},
          onChange: (DropDownModel? model) =>
              provRegisterData.setSelectCenter(model),
          useName: true,
          searchHint: tr(context, 'search'),
          finData: (data) => provRegisterData.getCenters(context),
          enableColor: MyColors.greyWhite,
          fillColor: MyColors.white,
        ),
      ],
    );
  }
}
