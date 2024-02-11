part of 'ProvProfileWidgetsImports.dart';

class BuildProvProfileInputs extends StatelessWidget {
  final ProvProfileData provProfileData;

  const BuildProvProfileInputs({Key? key, required this.provProfileData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: provProfileData.formKey,
      child: Column(
        children: [
          BuildProfileInputItem(
            title: '',
            showTitle: false,
            hint: tr(context, 'name'),
            controller: provProfileData.name,
            validate: (value) => value!.validateEmpty(context),
            fieldMargin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
          BuildProfileInputItem(
            title: '',
            showTitle: false,
            hint: tr(context, 'phone'),
            controller: provProfileData.phone,
            validate: (value) => value!.validatePhone(context),
            fieldMargin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
          BuildProfileInputItem(
            title: '',
            showTitle: false,
            hint: tr(context, 'email'),
            controller: provProfileData.email,
            validate: (value) => value!.validateEmail(context),
            fieldMargin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          ),
          DropdownTextField<DropDownModel>(
            dropKey: provProfileData.specDropKey,
            selectedItem: provProfileData.selectedSpec,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            validate: (value){},
            onChange: (DropDownModel? model) =>
                provProfileData.setSelectSpec(model),
            useName: true,
            searchHint: tr(context, 'search'),
            enableColor: MyColors.greyWhite,
            fillColor: MyColors.white,
            finData: (data) => provProfileData.getSpecs(context),
          ),
          DropdownTextField<DropDownModel>(
            dropKey: provProfileData.centerDropKey,
            selectedItem: provProfileData.selectedCenter,
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            validate: (value) {},
            onChange: (DropDownModel? model) =>
                provProfileData.setSelectCenter(model),
            useName: true,
            searchHint: tr(context, 'search'),
            enableColor: MyColors.greyWhite,
            fillColor: MyColors.white,
            finData: (data) => provProfileData.getCenters(context),
          ),
          BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
            bloc: provProfileData.uploadPdfBloc,
            builder: (context, state) {
              return GenericTextField(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                controller: provProfileData.cv,
                fieldTypes:
                    state.data.isEmpty ? FieldTypes.clickable : FieldTypes.normal,
                onTab: () => provProfileData.uploadPdf(),
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(context),
                hint: tr(context, 'uploadCV'),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                suffixIcon: Container(
                  width: 20,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: MyColors.primary.withOpacity(0.9),
                  ),
                  child: state.data.isEmpty
                      ? Icon(
                          Icons.cloud_upload_sharp,
                          color: MyColors.white,
                        )
                      : InkWell(
                          child: const Icon(
                            Icons.cancel_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          onTap: () =>
                              provProfileData.removePdf(context: context),
                        ),
                ),
              );
            },
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
            hint: tr(context, 'doctorDescription'),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          ),
        ],
      ),
    );
  }
}
