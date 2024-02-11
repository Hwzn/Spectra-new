part of 'ProvRegisterWidgetsImports.dart';

class BuildDoctorsView extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  const BuildDoctorsView({Key? key, required this.provRegisterData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<DropDownModel>>,
        GenericState<List<DropDownModel>>>(
      bloc: provRegisterData.chosenDoctorsBloc,
      builder: (context, state) {
        return Column(
          children: [
            GenericTextField(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: provRegisterData.cv,
              fieldTypes: FieldTypes.clickable,
              onTab: () => provRegisterData.showDoctors(context),
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value!.noValidate(),
              hint: tr(context, 'addDoctors'),
              margin: const EdgeInsets.symmetric(vertical: 10),
              suffixIcon: Container(
                width: 20,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.primary.withOpacity(0.9),
                ),
                child: Icon(
                  Icons.add,
                  color: MyColors.white,
                ),
              ),
            ),
            Visibility(
              visible: state.data.isNotEmpty,
              child: Column(
                children: List.generate(
                  state.data.length,
                      (index) => BuildDoctorItem(
                    provRegisterData: provRegisterData,
                    model: state.data[index],
                    showAdd: false,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
