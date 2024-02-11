part of 'ProvAccountWidgetsImports.dart';

class BuildAccountBottomSheet extends StatelessWidget {
  final Function()? onSubmit;
  final TextEditingController controller;
  final String title;

  const BuildAccountBottomSheet({
    Key? key,
    this.onSubmit,
    required this.controller,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 15),
      child: ListView(
        children: [
          MyText(
            title: title,
            color: MyColors.black,
            size: 16,
            alien: TextAlign.center,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.all(10),
            controller: controller,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value!.validateEmpty(context),
            margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
            enableBorderColor: MyColors.grey,
          ),
          DefaultButton(
            title: tr(context, 'submit'),
            onTap: onSubmit,
            borderRadius: BorderRadius.circular(20),
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
          InkWell(
            onTap: ()=> Navigator.pop(context),
            child: MyText(
              title: tr(context, 'cancel'),
              color: MyColors.grey,
              size: 12,
              alien: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
