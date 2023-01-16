part of 'ProvProfileWidgetsImports.dart';

class BuildProvProfilePhoto extends StatelessWidget {
  final ProvProfileData provProfileData;
  const BuildProvProfilePhoto({Key? key, required this.provProfileData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: provProfileData.profileCubit,
            builder: (context, state) {
              if(state is GenericUpdateState){
                return SizedBox(
                  width: 150,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(state.data?? File('')),
                          fit: BoxFit.cover,
                        )
                    ),
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () => provProfileData.setProfileImage(),
                      child: Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: MyColors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return SizedBox(
                  width: 150,
                  child: CachedImage(
                    url:
                    "https://www.freshpondanimalhospital.com/uploads/SiteAssets/17/images/staff/804198.jpg",
                    height: 130,
                    width: 130,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () => provProfileData.setProfileImage(),
                      child: Container(
                        height: 35,
                        width: 35,
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: MyColors.white,
                          size: 20,
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
