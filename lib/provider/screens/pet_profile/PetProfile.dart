part of 'PetProfileImports.dart';

class PetProfile extends StatefulWidget {
  const PetProfile({Key? key}) : super(key: key);

  @override
  State<PetProfile> createState() => _PetProfileState();
}

class _PetProfileState extends State<PetProfile> {
  PetProfileData petProfileData = PetProfileData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "",
        size: 200,
        centerTitle: true,
        showLeading: false,
        child: BuildPetHeader(),
      ),
      body: ListView(
        children: const [
          BuildPetInfo(),
          BuildPetPdf(),
          BuildPetSessions(),
        ],
      ),
    );
  }
}
