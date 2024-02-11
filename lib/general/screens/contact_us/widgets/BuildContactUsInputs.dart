part of 'ContactUsWidgetsImports.dart';

class BuildContactUsInputs extends StatelessWidget {
  final ContactUsData contactUsData;

  const BuildContactUsInputs({Key? key, required this.contactUsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactUsData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: MyText(
              title: tr(context, 'name'),
              color: Colors.black,
              size: 12,
            ),
          ),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            hint: tr(context, 'name'),
            controller: contactUsData.name,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.next,
            type: TextInputType.text,
            validate: (value) => value!.validateEmpty(context),
          ),
          const SizedBox(height: 10),
          MyText(
            title: tr(context, "email"),
            color: Colors.black,
            size: 12,
          ),
          GenericTextField(
            fieldTypes: FieldTypes.normal,
            hint: tr(context, 'enterEmail'),
            controller: contactUsData.email,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.next,
            type: TextInputType.emailAddress,
            validate: (value) => value!.validateEmail(context),
          ),
          const SizedBox(height: 10),
          MyText(title: tr(context, 'notes'), color: Colors.black, size: 12),
          GenericTextField(
            fieldTypes: FieldTypes.rich,
            max: 3,
            hint: tr(context, 'enterNotes'),
            controller: contactUsData.notes,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.done,
            type: TextInputType.text,
            validate: (value) => value!.validateEmpty(context),
          ),
        ],
      ),
    );
  }
}
