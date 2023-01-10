part of 'SessionWidgetsImports.dart';

class BuildSessionInvite extends StatelessWidget {
  const BuildSessionInvite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(20),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "Invite a translator",
            color: MyColors.black,
            size: 12,
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: MyColors.primary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: MyText(
                    title: "http://spectra.com/meeting4535",
                    color: MyColors.grey,
                    size: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  decoration: BoxDecoration(
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: MyText(
                    title: "Share",
                    color: MyColors.white,
                    size: 8,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
