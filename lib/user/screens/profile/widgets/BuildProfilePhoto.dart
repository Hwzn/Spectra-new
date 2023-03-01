part of 'ProfileWidgetsImports.dart';

class BuildProfilePhoto extends StatelessWidget {
  final ProfileData profileData;

  const BuildProfilePhoto({Key? key, required this.profileData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
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
            bloc: profileData.imageBloc,
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
                      onTap: () => profileData.setProfileImage(),
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
                    url: user.image,
                    height: 130,
                    width: 130,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () => profileData.setProfileImage(),
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
