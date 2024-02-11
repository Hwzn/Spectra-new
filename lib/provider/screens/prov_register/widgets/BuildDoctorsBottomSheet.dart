part of 'ProvRegisterWidgetsImports.dart';

class BuildDoctorsBottomSheet extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  const BuildDoctorsBottomSheet(
      {Key? key, required this.provRegisterData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<DropDownModel>>, GenericState<List<DropDownModel>>>(
      bloc: provRegisterData.doctorsBloc,
      builder: (context, state) {
        if(state is GenericUpdateState){
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: MyText(
                  title: tr(context, 'chooseDoctors'),
                  color: MyColors.black,
                  size: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  shrinkWrap: true,
                  children: List.generate(
                    state.data.length,
                        (index) => BuildDoctorItem(
                      model: state.data[index],
                      provRegisterData: provRegisterData,
                    ),
                  ),
                ),
              ),
              DefaultButton(
                title: tr(context, 'done'),
                width: MediaQuery.of(context).size.width * 0.5,
                onTap: () => Navigator.pop(context),
              ),
            ],
          );
        } else {
          return LoadingDialog.showLoadingDialog();
        }
      },
    );
  }
}
