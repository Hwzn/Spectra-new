part of 'SessionWidgetsImports.dart';

class BuildSessionHeader extends StatelessWidget {
  const BuildSessionHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xff635971),
              Color(0xff957785),
            ]),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Res.logoWhite,
            height: 130,
            width: 130,
          ),
        ],
      ),
    );
  }
}
