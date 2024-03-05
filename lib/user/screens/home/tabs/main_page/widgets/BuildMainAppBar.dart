part of 'MainWidgetsImports.dart';

class BuildMainAppBar extends StatelessWidget {
  const BuildMainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.19,
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
        centerTitle: true,
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
        leadingWidth: 70,
        leading: InkWell(
          onTap: () => AutoRouter.of(context).push(AllChatsRoute()),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(Res.chat),
          ),
        ),
        title: Image.asset(
          Res.homeLogoWhite,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: ()=> AutoRouter.of(context).push(const NotificationsRoute()),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            color: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            icon: Icon(
              Icons.notifications_rounded,
              color: MyColors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
