part of 'ProvRegisterWidgetsImports.dart';

class BuildPasswordsView extends StatelessWidget {
  final ProvRegisterData provRegisterData;

  const BuildPasswordsView({Key? key, required this.provRegisterData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: provRegisterData.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 7),
                controller: provRegisterData.pass,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value?.validatePassword(context),
                hint: tr(context, 'password'),
                margin: const EdgeInsets.symmetric(vertical: 7),
                suffixIcon: IconButton(
                  onPressed: () => provRegisterData.passwordCubit
                      .onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                    color: MyColors.grey,
                  ),
                ),
              );
            }),
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: provRegisterData.confirmPassCubit,
            builder: (context, state) {
              return GenericTextField(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 7),
                controller: provRegisterData.confirmPass,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePasswordConfirm(
                    context,
                    pass: provRegisterData.pass.text),
                hint: tr(context, 'reEnterPassword'),
                margin: const EdgeInsets.symmetric(vertical: 7),
                suffixIcon: IconButton(
                  onPressed: () => provRegisterData.confirmPassCubit
                      .onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                    color: MyColors.grey,
                  ),
                ),
              );
            }),
      ],
    );
  }
}
