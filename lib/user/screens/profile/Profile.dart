part of 'ProfileImports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ProfileData profileData = ProfileData();
  @override
  void initState() {
    profileData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "My Account"),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          BuildProfilePhoto(profileData: profileData),
          BuildProfileInputs(profileData: profileData),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Save",
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        borderRadius: BorderRadius.circular(15),
        onTap: ()=> profileData.updateProfile(context),
      ),
    );
  }
}
