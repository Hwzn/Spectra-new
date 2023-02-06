part of 'ProvReservWidgetsImports.dart';

class BuildDetailsBottomSheet extends StatelessWidget {
  const BuildDetailsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 15, left: 15),
      child: ListView(
        children: [
          MyText(
            title: "Fill Session Details",
            color: MyColors.black,
            size: 16,
            alien: TextAlign.center,
          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            controller: TextEditingController(),
            fieldTypes: FieldTypes.rich,
            max: 10,
            focusBorderColor: MyColors.black,
            enableBorderColor: MyColors.black,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value!.validateEmpty(context),
            margin: const EdgeInsets.only(top: 20),
          ),
          DefaultButton(
            title: "Save",
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: ()=>AutoRouter.of(context).pop(),
          ),
          DefaultButton(
            title: "Cancel",
            onTap: ()=>AutoRouter.of(context).pop(),
            margin: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 30,
            ),
            color: MyColors.bg,
            textColor: MyColors.grey,
          ),
        ],
      ),
    );
  }
}
