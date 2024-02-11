part of 'AddPetWidgetsImports.dart';

class BuildOptionsDialog extends StatelessWidget {
  final AddPetData addPetData;
  const BuildOptionsDialog({Key? key, required this.addPetData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 10),
            child: MyText(
              title: tr(context, 'chooseAttachmentType'),
              size: 15,
              color: MyColors.black,
            ),
          ),
          DefaultButton(
            title: tr(context, 'images'),
            width: MediaQuery.of(context).size.width * .4,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            onTap: () => addPetData.uploadImages(context),
          ),
          DefaultButton(
            title: tr(context, 'files'),
            width: MediaQuery.of(context).size.width * .4,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            onTap: () => addPetData.uploadFiles(context),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
