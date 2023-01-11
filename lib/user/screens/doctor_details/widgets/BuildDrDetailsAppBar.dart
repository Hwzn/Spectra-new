part of 'DoctorDetailsWidgetsImports.dart';

class BuildDrDetailsAppBar extends StatelessWidget {
  const BuildDrDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.23,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff635971),
              Color(0xff957785),
            ]),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleTextStyle: GoogleFonts.tajawal(
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 19.0),
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leadingWidth: 30,
        leading: InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Container(
            height: 28, width: 28,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.arrow_back_ios,
              color: MyColors.white,
            ),
          ),
        ),
        title: Image.asset(
          Res.homeLogoWhite,
          height: 50,
        ),
        actions: [
          InkWell(
            onTap: () => AutoRouter.of(context).push(AllChatsRoute()),
            child: Container(
              height: 28, width: 28,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(Res.chat),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.favorite,
              color: MyColors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
