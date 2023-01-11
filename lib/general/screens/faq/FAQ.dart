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
    faqData.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "FAQ"),
      body: BlocBuilder<GenericBloc<List<FaqModel>>, GenericState<List<FaqModel>>>(
        bloc: faqData.faqBloc,
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 20),
            itemCount: state.data.length,
            itemBuilder: (_, index) {
              return BuildFaqItem(
                index: index,
                model: state.data[index],
                faqData: faqData,
              );
            },
          );
        },
      ),
    );
  }
}
