part of 'TermsImports.dart';

class TermsData {
  // keys
  GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  // blocs
  final GenericBloc<String> termsBloc = GenericBloc('');

  // methods
  fetchData(BuildContext context) async {
    var data = await GeneralRepository(context).getTerms();
    termsBloc.onUpdateData(data);
  }

}
