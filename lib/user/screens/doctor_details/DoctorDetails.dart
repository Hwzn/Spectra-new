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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.33,
              ),
              const BuildDrDetailsAppBar(),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                child: const BuildSessionDoctor(),
              ),
            ],
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                BuildDoctorDateTime(),
                BuildSessionDoctorInfo(),
                BuildDoctorReviews(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
