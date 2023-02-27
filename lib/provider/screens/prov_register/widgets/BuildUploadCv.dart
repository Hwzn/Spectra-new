part of 'ProvRegisterWidgetsImports.dart';

class BuildUploadCv extends StatelessWidget {
  final ProvRegisterData provRegisterData;
  final bool visible;

  const BuildUploadCv(
      {Key? key, required this.provRegisterData, required this.visible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      replacement: BuildDoctorsView(provRegisterData: provRegisterData),
      child: BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
        bloc: provRegisterData.uploadPdfBloc,
        builder: (context, state) {
          if (state.data.isNotEmpty) {
            return Row(
              children: [
                Container(
                  height: 60,
                  width: 45,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://play-lh.googleusercontent.com/kIwlXqs28otssKK_9AKwdkB6gouex_U2WmtLshTACnwIJuvOqVvJEzewpzuYBXwXQQ"),
                    ),
                  ),
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    child: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                    onTap: () => provRegisterData.removePdf(context: context),
                  ),
                ),
                Expanded(
                  child: MyText(
                    title: state.data.first.path,
                    color: MyColors.blackOpacity,
                    size: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          } else {
            return GenericTextField(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              controller: provRegisterData.cv,
              fieldTypes: FieldTypes.clickable,
              onTab: () => provRegisterData.uploadPdf(),
              type: TextInputType.text,
              action: TextInputAction.next,
              validate: (value) => value!.validateEmpty(context),
              hint: "Upload CV",
              margin: const EdgeInsets.symmetric(vertical: 10),
              suffixIcon: Container(
                width: 20,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.primary.withOpacity(0.9),
                ),
                child: Icon(
                  Icons.cloud_upload_sharp,
                  color: MyColors.white,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
