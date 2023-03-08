part of 'DoctorDetailsImports.dart';

class DoctorDetails extends StatefulWidget {
  final int doctorId;

  const DoctorDetails({Key? key, required this.doctorId}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  DoctorDetailsData doctorDetailsData = DoctorDetailsData();

  @override
  void initState() {
    doctorDetailsData.fetchData(context, widget.doctorId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: BlocBuilder<GenericBloc<DoctorDetailsModel?>,
          GenericState<DoctorDetailsModel?>>(
        bloc: doctorDetailsData.detailsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.33,
                    ),
                    BuildDrDetailsAppBar(
                      doctorDetailsData: doctorDetailsData,
                      doctorId: widget.doctorId,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width,
                      child: BuildSessionDoctor(model: state.data!.doctor),
                    ),
                  ],
                ),
                Flexible(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      BuildDoctorDateTime(
                        daysList: doctorDetailsData.daysBloc.state.data,
                      ),
                      BuildSessionDoctorInfo(
                        info: state.data?.doctorInfo ?? '',
                      ),
                      BuildDoctorReviews(
                        avgRate:
                            double.parse(state.data?.doctor.avgRate ?? '0'),
                        reviewsList: state.data?.reviews ?? [],
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.33,
                    ),
                    BuildDrDetailsAppBar(
                      doctorDetailsData: doctorDetailsData,
                      doctorId: widget.doctorId,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: MyColors.bg,
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20)),
                        ),
                      ),
                    ),
                  ],
                ),
                LoadingDialog.showLoadingView(),
              ],
            );
          }
        },
      ),
    );
  }
}
