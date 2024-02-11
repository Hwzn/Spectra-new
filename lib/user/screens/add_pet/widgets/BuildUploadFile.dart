part of 'AddPetWidgetsImports.dart';

class BuildUploadFile extends StatelessWidget {
  final AddPetData addPetData;

  const BuildUploadFile({Key? key, required this.addPetData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: tr(context, 'uploadFiles'),
            color: MyColors.black,
            size: 12,
          ),
          BlocBuilder<GenericBloc<PetFileModel>, GenericState<PetFileModel>>(
            bloc: addPetData.filesBloc,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    children: [
                      ...List.generate(
                        state.data.files.length,
                            (index) => Column(
                          children: [
                            Container(
                              height: 60,
                              width: 45,
                              margin:
                              const EdgeInsets.symmetric(horizontal: 10),
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
                                onTap: () => addPetData.deleteFile(index),
                              ),
                            ),
                            SizedBox(
                              width: 45,
                              child: MyText(
                                title: state.data.files[index].path,
                                color: MyColors.black,
                                size: 9,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                                alien: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      ...List.generate(
                        state.data.images.length,
                            (index) => Column(
                          children: [
                            Container(
                              height: 60,
                              width: 45,
                              margin:
                              const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: FileImage(state.data.images[index]),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                              child: InkWell(
                                child: const Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                onTap: () => addPetData.deleteImage(index),
                              ),
                            ),
                            SizedBox(
                              width: 45,
                              child: MyText(
                                title: state.data.images[index].path,
                                color: MyColors.black,
                                size: 9,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                                alien: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () => addPetData.showFilesOptions(context),
                        icon: const Icon(Icons.add_to_photos),
                      )
                    ],
                  ),
                );
              } else {
                return InkWell(
                  onTap: () => addPetData.showFilesOptions(context),
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: MyText(
                      title: "+  ${tr(context, 'uploadFileName')}",
                      color: MyColors.blackOpacity,
                      size: 14,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
