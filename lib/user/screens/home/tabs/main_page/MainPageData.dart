part of 'MainPageImports.dart';

class MainPageData {
  // blocs
  final GenericBloc<HomeModel?> homeBloc = GenericBloc(null);

  //
  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getHome();
    homeBloc.onUpdateData(data);
  }

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
