part of 'ProvReservationsImports.dart';

class ProvReservationsData {
  // controllers
  late TabController tabController;

  // blocs
  final GenericBloc<int> tabsBloc = GenericBloc(0);

  // methods
  sessionDetails(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        return const BuildDetailsBottomSheet();
      },
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * .5,
      ),
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }
}
