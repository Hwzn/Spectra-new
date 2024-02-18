part of 'SpecializationImports.dart';

class Specialization extends StatefulWidget {
  final int specId;
  final String specName;

  const Specialization({Key? key, required this.specId, required this.specName})
      : super(key: key);

  @override
  State<Specialization> createState() => _SpecializationState();
}

class _SpecializationState extends State<Specialization> {
  SpecializationData specializationData = SpecializationData();

  @override
  void initState() {
    specializationData.fetchData(context, widget.specId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: widget.specName),
      body: BlocBuilder<GenericBloc<List<DoctorModel>>,
          GenericState<List<DoctorModel>>>(
        bloc: specializationData.doctorsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                child: MyText(
                  title: tr(context, 'noDoctors'),
                  color: MyColors.primary,
                  size: 12,
                ),
              ),
              child: AnimationLimiter(
                child: ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemCount: state.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: BuildDoctorItem(model: state.data[index],),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
