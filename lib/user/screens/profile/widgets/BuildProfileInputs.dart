part of 'ProfileWidgetsImports.dart';

class BuildProfileInputs extends StatelessWidget {
  final ProfileData profileData;
  const BuildProfileInputs({Key? key, required this.profileData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildProfileInputItem(
          title: tr(context, 'name'),
          hint: profileData.name.text,
          controller: profileData.name,
          validate: (value)=> value!.validateEmpty(context),
        ),
        BuildProfileInputItem(
          title: tr(context, 'phone'),
          hint: profileData.phone.text,
          controller: profileData.phone,
          validate: (value)=> value!.validatePhone(context),
          textInputType: TextInputType.phone,
        ),
        BuildProfileInputItem(
          title: tr(context, 'email'),
          hint: profileData.email.text,
          controller: profileData.email,
          validate: (value)=> value!.validateEmail(context),
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
