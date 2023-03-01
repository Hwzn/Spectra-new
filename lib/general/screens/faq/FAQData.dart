part of 'FAQImports.dart';

class FAQData {
  // blocs
  final GenericBloc<List<QuestionModel>> faqBloc = GenericBloc([]);

  // methods
  fetchData(BuildContext context) async {
    var data = await GeneralRepository(context). getFAQ();
    faqBloc.onUpdateData(data);
  }

  showHideAnswer(int index){
    // get list data
    var list = faqBloc.state.data;
    // change the value of opened to show or hide answer
    list[index].opened = !list[index].opened;
    // update the list
    faqBloc.onUpdateData(list);
  }

}
