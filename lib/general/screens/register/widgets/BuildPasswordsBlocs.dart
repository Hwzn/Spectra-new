part of 'RegisterWidgetsImports.dart';

class BuildPasswordsBloc extends StatelessWidget {
  final RegisterData registerData;
  const BuildPasswordsBloc({Key? key, required this.registerData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerData.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                controller: registerData.passwordController,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value?.validatePassword(context),
                hint: "Password",
                margin: const EdgeInsets.symmetric(vertical: 7),
                suffixIcon: IconButton(
                  onPressed: () =>
                      registerData.passwordCubit.onUpdateData(!state.data),
                  icon: Icon(
                    !state.data ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                    color: MyColors.grey,
                  ),
                ),
              );
            }),
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerData.confirmPassCubit,
            builder: (context, state) {
              return GenericTextField(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                controller: registerData.confirmPasswordController,
                fieldTypes:
                !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePasswordConfirm(context, pass: registerData.passwordController.text),
                hint: "Re-enter Password",
                margin: const EdgeInsets.symmetric(vertical: 7),
                suffixIcon: IconButton(
                  onPressed: () =>
                      registerData.confirmPassCubit.onUpdateData(!state.data),
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
