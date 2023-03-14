part of 'ProvProfileWidgetsImports.dart';

class BuildProvProfileInputs extends StatelessWidget {
  final ProvProfileData provProfileData;

  const BuildProvProfileInputs({Key? key, required this.provProfileData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildProfileInputItem(
          title: '',
          showTitle: false,
          hint: "Aya Hamed",
          controller: provProfileData.name,
          validate: (value) => value!.validateEmpty(context),
          fieldMargin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        ),
        BuildProfileInputItem(
          title: '',
          showTitle: false,
          hint: "+9662345678",
          controller: provProfileData.phone,
          validate: (value) => value!.validatePhone(context),
          fieldMargin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        ),
        BuildProfileInputItem(
          title: '',
          showTitle: false,
          hint: "aya@gmail.com",
          controller: provProfileData.email,
          validate: (value) => value!.validateEmpty(context),
          fieldMargin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        ),
        DropdownTextField<DropDownModel>(
          dropKey: provProfileData.specDropKey,
          selectedItem: provProfileData.selectedSpec,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          validate: (value) => value.noValidate(),
          onChange: (DropDownModel? model) =>
              provProfileData.setSelectSpec(model),
          useName: true,
          searchHint: "Search",
          enableColor: MyColors.greyWhite,
          fillColor: MyColors.white,
          finData: (data)=> provProfileData.getSpecs(context),
        ),
        DropdownTextField<DropDownModel>(
          dropKey: provProfileData.centerDropKey,
          selectedItem: provProfileData.selectedCenter,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          validate: (value) => value.noValidate(),
          onChange: (DropDownModel? model) =>
              provProfileData.setSelectCenter(model),
          useName: true,
          searchHint: "Search",
          enableColor: MyColors.greyWhite,
          fillColor: MyColors.white,
          finData: (data)=> provProfileData.getCenters(context),
        ),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          controller: provProfileData.cv,
          fieldTypes: FieldTypes.clickable,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value!.validateEmpty(context),
          hint: "Aya cv.pdf",
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          suffixIcon: Container(
            width: 20,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColors.primary.withOpacity(0.9),
            ),
            child: Icon(
              Icons.cloud_upload_sharp,
              color: MyColors.white,
            ),
          ),
        ),
        GenericTextField(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          controller: provProfileData.description,
          fieldTypes: FieldTypes.rich,
          max: 4,
          type: TextInputType.text,
          action: TextInputAction.next,
          validate: (value) => value!.validateEmpty(context),
          hint: "Doctor Description",
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        ),
      ],
    );
  }
}
