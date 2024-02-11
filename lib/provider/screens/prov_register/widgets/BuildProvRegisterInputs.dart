part of 'ProvRegisterWidgetsImports.dart';

class BuildProvRegisterInputs extends StatelessWidget {
  final ProvRegisterData provRegisterData;

  const BuildProvRegisterInputs({Key? key, required this.provRegisterData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
        bloc: provRegisterData.typeBloc,
        builder: (context, state) {
          return Form(
            key: provRegisterData.formKey,
            child: Column(
              children: [
                GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: provRegisterData.name,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(context),
                  hint: state.data == 1
                      ? tr(context, 'name')
                      : tr(context, 'centerName'),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                BuildCountryPhone(provRegisterData: provRegisterData),
                GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: provRegisterData.email,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.emailAddress,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmail(context),
                  hint: tr(context, 'email'),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                Visibility(
                  visible: state.data == 1,
                  replacement: GenericTextField(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    controller: provRegisterData.generalInfo,
                    fieldTypes: FieldTypes.normal,
                    type: TextInputType.text,
                    action: TextInputAction.next,
                    validate: state.data != 1
                        ? (value) => value!.validateEmpty(context)
                        : (value) => value!.noValidate(),
                    hint: tr(context, 'generalInfo'),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child:
                      BuildDoctorsDropDown(provRegisterData: provRegisterData),
                ),
                GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: provRegisterData.invCode,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.number,
                  action: TextInputAction.next,
                  validate: (value) => value!.validateEmpty(context),
                  hint: tr(context, 'invitationCode'),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                BuildUploadCv(
                    provRegisterData: provRegisterData,
                    visible: state.data == 1),
                Visibility(
                  visible: state.data == 1,
                  child: BuildPasswordsView(provRegisterData: provRegisterData),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
