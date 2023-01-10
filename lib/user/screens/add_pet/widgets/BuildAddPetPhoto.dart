part of 'AddPetWidgetsImports.dart';

class BuildAddPetPhoto extends StatelessWidget {
  final AddPetData addPetData;
  const BuildAddPetPhoto({Key? key, required this.addPetData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: addPetData.imageBloc,
            builder: (context, state) {
              if(state is GenericUpdateState){
                return SizedBox(
                  width: 130,
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(state.data?? File('')),
                          fit: BoxFit.cover,
                        )
                    ),
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () => addPetData.setProfileImage(),
                      child: Container(
                        height: 30,
                        width: 30,
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: MyColors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return SizedBox(
                  width: 130,
                  child: CachedImage(
                    url:
                    "https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9",
                    height: 110,
                    width: 110,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () => addPetData.setProfileImage(),
                      child: Container(
                        height: 30,
                        width: 30,
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: MyColors.white,
                          size: 18,
                        ),
                      ),
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
