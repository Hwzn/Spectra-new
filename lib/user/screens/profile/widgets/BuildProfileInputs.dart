part of 'ProfileWidgetsImports.dart';

class BuildProfileInputs extends StatelessWidget {
  final ProfileData profileData;
  const BuildProfileInputs({Key? key, required this.profileData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildProfileInputItem(
          title: "User name",
          hint: "Aya Hamed",
          controller: profileData.name,
          validate: (value)=> value!.validateEmpty(context),
        ),
        BuildProfileInputItem(
          title: "Phone Number",
          hint: "+9661234567890",
          controller: profileData.phone,
          validate: (value)=> value!.validatePhone(context),
          textInputType: TextInputType.phone,
        ),
        BuildProfileInputItem(
          title: "E-mail",
          hint: "aya@gmail.com",
          controller: profileData.email,
          validate: (value)=> value!.validateEmail(context),
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
