part of 'FAQWidgetsImports.dart';

class BuildFaqItem extends StatelessWidget {
  final QuestionModel model;
  final FAQData faqData;
  final int index;

  const BuildFaqItem({
    Key? key,
    required this.model,
    required this.faqData,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: MyColors.greyWhite, spreadRadius: 2, blurRadius: 5),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: MyText(
                    title: model.question,
                    size: 12,
                    color: MyColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => faqData.showHideAnswer(index),
                icon: Icon(
                  model.opened
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              )
            ],
          ),
          Visibility(
            visible: model.opened,
            child: Column(
              children: [
                const Divider(
                  endIndent: 20,
                  indent: 20,
                  thickness: 1.5,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: MyText(
                    title: model.answer,
                    size: 12,
                    color: MyColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
