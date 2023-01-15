part of 'AddPostWidgetsImports.dart';

class BuildPostButtons extends StatelessWidget {
  const BuildPostButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: "",
          color: MyColors.bg,
          borderRadius: BorderRadius.circular(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(Res.locator, width: 18),
              const SizedBox(width: 10),
              MyText(
                title: "Share Location",
                color: MyColors.blackOpacity,
                size: 11,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ],
          ),
        ),
        DefaultButton(
          title: "",
          borderRadius: BorderRadius.circular(15),
          color: MyColors.secondary.withOpacity(0.8),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(MdiIcons.imagePlusOutline, color: MyColors.white),
              const SizedBox(width: 10),
              MyText(
                title: "Upload photo",
                color: MyColors.white,
                size: 11,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ],
          ),
        ),
        DefaultButton(
          title: "Post",
          borderRadius: BorderRadius.circular(15),
          margin:
              const EdgeInsets.only(bottom: 20, right: 20, left: 20, top: 10),
        ),
      ],
    );
  }
}