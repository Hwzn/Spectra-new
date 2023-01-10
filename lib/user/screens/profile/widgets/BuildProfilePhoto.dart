part of 'ProfileWidgetsImports.dart';

class BuildProfilePhoto extends StatelessWidget {
  const BuildProfilePhoto({Key? key}) : super(key: key);

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
          SizedBox(
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
        ],
      ),
    );
  }
}
