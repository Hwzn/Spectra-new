part of 'SpecializationImports.dart';

class Specialization extends StatefulWidget {
  const Specialization({Key? key}) : super(key: key);

  @override
  State<Specialization> createState() => _SpecializationState();
}

class _SpecializationState extends State<Specialization> {
  SpecializationData specializationData = SpecializationData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Specialization"),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: const SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: BuildDoctorItem(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
