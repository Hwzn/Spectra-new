part of 'ProvRegisterImports.dart';

class ProvRegister extends StatefulWidget {
  const ProvRegister({Key? key}) : super(key: key);

  @override
  State<ProvRegister> createState() => _ProvRegisterState();
}

class _ProvRegisterState extends State<ProvRegister> {
  ProvRegisterData provRegisterData = ProvRegisterData();

  @override
  void initState() {
    provRegisterData.getDoctors(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      logoTopPadding: 30,
      title: "Create New Account",
      body: Column(
        children: [
          BlocBuilder<GenericBloc<int>, GenericState<int>>(
            bloc: provRegisterData.typeBloc,
            builder: (_, state) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuildProviderType(
                      provRegisterData: provRegisterData,
                      title: "Doctor",
                      type: 1,
                      selected: state.data == 1,
                    ),
                    BuildProviderType(
                      provRegisterData: provRegisterData,
                      title: "Center",
                      type: 2,
                      selected: state.data == 2,
                    ),
                  ],
                ),
              );
            },
          ),
          BuildProvRegisterInputs(
            provRegisterData: provRegisterData,
          ),
          LoadingButton(
            btnKey: provRegisterData.btnKey,
            title: "SIGN UP",
            textColor: MyColors.white,
            onTap: ()=> provRegisterData.onRegister(context),
          ),
          const BuildHaveAccount(),
        ],
      ),
    );
  }
}
