part of 'MainPageImports.dart';

class MainPageData {
  openFilter(BuildContext context) {
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return const BuildFilterBottomSheet();
      },
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * .42,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }
}
