part of 'ProvProfileImports.dart';

class ProvProfile extends StatefulWidget {
  const ProvProfile({Key? key}) : super(key: key);

  @override
  State<ProvProfile> createState() => _ProvProfileState();
}

class _ProvProfileState extends State<ProvProfile> {
  ProvProfileData provProfileData = ProvProfileData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "My Account"),
      body: ListView(
        children: [
          BuildProvProfilePhoto(provProfileData: provProfileData),
          BuildProvProfileInputs(provProfileData: provProfileData),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Save Changes",
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        borderRadius: BorderRadius.circular(15),
        onTap: (){},
      ),
    );
  }
}
