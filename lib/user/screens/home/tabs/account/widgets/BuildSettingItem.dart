part of 'AccountWidgetsImports.dart';

class BuildSettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function()? onTap;

  const BuildSettingItem(
      {Key? key, required this.icon, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: MyColors.greyWhite,
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              icon,
              size: 25,
              color: MyColors.black,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: MyText(
                  title: title,
                  size: 14,
                  color: MyColors.black,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 25,
              color: MyColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
