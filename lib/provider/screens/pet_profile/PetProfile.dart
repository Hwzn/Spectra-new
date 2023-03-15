part of 'PetProfileImports.dart';

class PetProfile extends StatefulWidget {
  final int id;

  const PetProfile({Key? key, required this.id}) : super(key: key);

  @override
  State<PetProfile> createState() => _PetProfileState();
}

class _PetProfileState extends State<PetProfile> {
  PetProfileData petProfileData = PetProfileData();

  @override
  void initState() {
    petProfileData.fetchData(context, widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<PetInfoModel?>, GenericState<PetInfoModel?>>(
      bloc: petProfileData.infoBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: DefaultAppBar(
            title: "",
            size: 200,
            centerTitle: true,
            showLeading: state.data == null,
            child: state.data != null
                ? BuildPetHeader(
                    image: state.data?.image ?? '',
                    name: state.data?.name ?? '',
                  )
                : const SizedBox(),
          ),
          body: state.data != null
              ? ListView(
                  children: [
                    BuildPetInfo(info: state.data?.details ?? ''),
                    BuildPetPdf(
                      petAttachments: state.data?.petAttachments ?? [],
                    ),
                    BuildPetSessions(sessions: state.data?.sessions ?? []),
                  ],
                )
              : LoadingDialog.showLoadingView(),
        );
      },
    );
  }
}
