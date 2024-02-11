part of 'ProvProfileImports.dart';

class ProvProfile extends StatefulWidget {
  const ProvProfile({Key? key}) : super(key: key);

  @override
  State<ProvProfile> createState() => _ProvProfileState();
}

class _ProvProfileState extends State<ProvProfile> {
  ProvProfileData provProfileData = ProvProfileData();

  @override
  void initState() {
    provProfileData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(title: tr(context, 'myAccount')),
      body: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: provProfileData.loadedBloc,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return ListView(
              children: [
                BuildProvProfilePhoto(provProfileData: provProfileData),
                BuildProvProfileInputs(provProfileData: provProfileData),
              ],
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: LoadingButton(
          title: tr(context, 'saveChanges'),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          borderRadius: 15,
          btnKey: provProfileData.btnKey,
          textColor: MyColors.white,
          onTap: () => provProfileData.updateProfile(context),
        ),
      ),
    );
  }
}
