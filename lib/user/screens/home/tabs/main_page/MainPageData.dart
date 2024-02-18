part of 'MainPageImports.dart';

class MainPageData {
  // blocs
  final GenericBloc<HomeModel?> homeBloc = GenericBloc(null);
  final GenericBloc<int> rateBloc = GenericBloc(0);
  final GenericBloc<int> priceBloc = GenericBloc(0);
  final GenericBloc<int> orderCountBloc = GenericBloc(0);
  final GenericBloc<int> alphabeticBloc = GenericBloc(0);

  // controllers
  final TextEditingController searchController = TextEditingController();

  // lists
  List<FilterTypesModel> types = [];

  // methods
  fetchData(BuildContext context) async {
    var data = await UserRepository(context).getHome();
    homeBloc.onUpdateData(data);
    initFilterOptions(context);
  }

  initFilterOptions(BuildContext context) {
    types.addAll([
      FilterTypesModel(
        ascTitle: tr(context, 'lowRated'),
        descTitle: tr(context, 'topRated'),
        ascValue: 1,
        descValue: 2,
        blocName: rateBloc,
      ),
      FilterTypesModel(
        ascTitle: tr(context, 'lowPrice'),
        descTitle: tr(context, 'highPrice'),
        ascValue: 1,
        descValue: 2,
        blocName: priceBloc,
      ),
      FilterTypesModel(
        ascTitle: tr(context, 'lowOrders'),
        descTitle: tr(context, 'highOrders'),
        ascValue: 1,
        descValue: 2,
        blocName: orderCountBloc,
      ),
      FilterTypesModel(
        ascTitle: tr(context, 'ascAlphabetical'),
        descTitle: tr(context, 'descAlphabetical'),
        ascValue: 1,
        descValue: 2,
        blocName: alphabeticBloc,
      ),
    ]);
  }

  addFilter(BuildContext context) async {
    AddFilterModel model = AddFilterModel(
      rate: rateBloc.state.data == 0
          ? null
          : (rateBloc.state.data == 1 ? "asc" : "desc"),
      price: priceBloc.state.data == 0
          ? null
          : (priceBloc.state.data == 1 ? "asc" : "desc"),
      orderCount: orderCountBloc.state.data == 0
          ? null
          : (orderCountBloc.state.data == 1 ? "asc" : "desc"),
      alphabetic: alphabeticBloc.state.data == 0
          ? null
          : (alphabeticBloc.state.data == 1 ? "asc" : "desc"),
    );
    var data = await UserRepository(context).addFilter(model);
    if (data.isNotEmpty) {
      AutoRouter.of(context).popAndPush(SearchRoute(doctorsList: data));
      rateBloc.onUpdateData(0);
      priceBloc.onUpdateData(0);
      orderCountBloc.onUpdateData(0);
      alphabeticBloc.onUpdateData(0);
    }
  }

  openFilter(BuildContext context) {
    // open bottom sheet
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return BuildFilterBottomSheet(
          mainPageData: this,
        );
      },
      // constraints: BoxConstraints(
      //   maxHeight: MediaQuery.of(context).size.height * .5,
      // ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
  }

  searchForDoctor(BuildContext context) async {
    if (searchController.text.isEmpty) {
      CustomToast.showSimpleToast(msg: tr(context, 'enterDoctorName'));
      return;
    }
    var data =
        await UserRepository(context).searchForDoctors(searchController.text);
    if (data.isNotEmpty) {
      searchController.clear();
      FocusScope.of(context).unfocus();
      AutoRouter.of(context).push(SearchRoute(doctorsList: data));
    }
  }
}
