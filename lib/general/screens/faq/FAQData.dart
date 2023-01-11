part of 'FAQImports.dart';

class FAQData {
  // blocs
  final GenericBloc<List<FaqModel>> faqBloc = GenericBloc([]);

  // lists
  List<FaqModel> faqList = [
    FaqModel(
      question: "Question here and may contains more than one line?",
      answer: "Answer here and may contains more than one line. Answer here and may contains more than one line.",
    ),
    FaqModel(
      question: "Question here and may contains more than one line?",
      answer: "Answer here and may contains more than one line. Answer here and may contains more than one line.",
    ),
    FaqModel(
      question: "Question here and may contains more than one line?",
      answer: "Answer here and may contains more than one line. Answer here and may contains more than one line.",
    ),
    FaqModel(
      question: "Question here and may contains more than one line?",
      answer: "Answer here and may contains more than one line. Answer here and may contains more than one line.",
    ),
    FaqModel(
      question: "Question here and may contains more than one line?",
      answer: "Answer here and may contains more than one line. Answer here and may contains more than one line.",
    ),
  ];

  // methods
  fetchData() {
    faqBloc.onUpdateData(faqList);
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
