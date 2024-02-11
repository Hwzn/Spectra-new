part of 'FAQImports.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  FAQData faqData = FAQData();

  @override
  void initState() {
    faqData.fetchData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: DefaultAppBar(title: tr(context, 'faq')),
      body: BlocBuilder<GenericBloc<List<QuestionModel>>,
          GenericState<List<QuestionModel>>>(
        bloc: faqData.faqBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Center(
                child: MyText(
                  title: tr(context, 'noQuestions'),
                  color: MyColors.primary,
                  size: 12,
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: state.data.length,
                itemBuilder: (_, index) {
                  return BuildFaqItem(
                    index: index,
                    model: state.data[index],
                    faqData: faqData,
                  );
                },
              ),
            );
          } else {
            return LoadingDialog.showLoadingView();
          }
        },
      ),
    );
  }
}
