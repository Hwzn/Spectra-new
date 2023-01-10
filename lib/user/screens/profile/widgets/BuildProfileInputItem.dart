part of 'ProfileWidgetsImports.dart';

class BuildProfileInputItem extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool isLast;
  final Function(String? value) validate;
  final FieldTypes? fieldType;
  final EdgeInsets? fieldMargin;

  const BuildProfileInputItem({
    Key? key,
    required this.title,
    required this.hint,
    required this.controller,
    this.textInputType,
    required this.validate,
    this.isLast = false,
    this.fieldType, this.fieldMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: title,
            color: MyColors.black,
            size: 12,
            fontWeight: FontWeight.w600,
          ),
          GenericTextField(
            fieldTypes: fieldType?? FieldTypes.normal,
            hint: hint,
            controller: controller,
            margin: fieldMargin ?? const EdgeInsets.only(top: 10, bottom: 15),
            action: isLast ? TextInputAction.done : TextInputAction.next,
            type: textInputType ?? TextInputType.name,
            validate: validate,
            radius: 15,
            max: fieldType != null ? 3 : null,
          ),
        ],
      ),
    );
  }
}
