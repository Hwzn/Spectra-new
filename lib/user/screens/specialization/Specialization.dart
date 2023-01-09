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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: List.generate(
          10,
          (index) => const BuildDoctorItem(),
        ),
      ),
    );
  }
}
