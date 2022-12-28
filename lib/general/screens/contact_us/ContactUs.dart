part of 'ContactUsImports.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}


class _ContactUsState extends State<ContactUs> {
  final ContactUsData contactUsData = ContactUsData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
        appBar: const BuildAuthAppBar(haveLeading: true),
        title: "تواصل معنا",
        body: Column(
          children: [
            BuildContactUsInputs(contactUsData: contactUsData),
            const BuildContactSocial(),
            LoadingButton(
              borderRadius: 8,
              borderColor: MyColors.primary,
              title: tr(context, "send"),
              onTap: () => contactUsData.addContactUs(context),
              color: MyColors.primary,
              textColor: MyColors.white,
              btnKey: contactUsData.btnKey,
              margin: const EdgeInsets.symmetric(vertical: 30),
              fontSize: 13,
            ),
          ],
        ));
  }
}
