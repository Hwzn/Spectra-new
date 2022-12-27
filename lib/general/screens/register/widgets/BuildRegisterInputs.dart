part of 'RegisterWidgetsImports.dart';

class BuildRegisterFields extends StatelessWidget {
  final RegisterDate registerDate;

  const BuildRegisterFields({Key? key, required this.registerDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<LangCubit>().state.locale.languageCode;
    return Form(
      key: registerDate.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.firstNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            label: "الاسم",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.lastNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            label: "اسم العائله",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          DropdownTextField<DropdownModel>(
            dropKey: registerDate.userDropKey,
            hint: "نوع المستخدم",
            selectedItem: registerDate.selectedUserType,
            margin: const EdgeInsets.symmetric(vertical: 5),
            validate: (value) => ValidatorDrop(value).validateDropDown(context),
            onChange: registerDate.setSelectUser,
            finData: (data) => registerDate.getUserTypes(context),
            useName: true,
            searchHint: "Search",
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(context),
            label: "البريد الالكتروني",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.phoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(context),
            label: "رقم الجوال",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            controller: registerDate.jobController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(context),
            label: "المهنة",
            margin: const EdgeInsets.symmetric(vertical: 10),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: registerDate.passwordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: registerDate.passwordController,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value?.validatePassword(context),
                  label: "كلمه المرور",
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        registerDate.passwordCubit.onUpdateData(!state.data),
                    icon: Icon(
                      !state.data ? Icons.visibility : Icons.visibility_off,
                      size: 20,
                      color: MyColors.grey,
                    ),
                  ),
                );
              }),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: registerDate.passwordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: registerDate.confirmPasswordController,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePasswordConfirm(context, pass: registerDate.passwordController.text),
                  label: "تاكيد كلمه المرور",
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        registerDate.passwordCubit.onUpdateData(!state.data),
                    icon: Icon(
                      !state.data ? Icons.visibility : Icons.visibility_off,
                      size: 20,
                      color: MyColors.grey,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
