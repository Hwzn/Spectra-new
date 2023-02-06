part of 'MainWidgetsImports.dart';

class BuildFilterBottomSheet extends StatelessWidget {
  const BuildFilterBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
      child: Column(
        children: [
          MyText(title: "Filter", color: MyColors.black, size: 20),
          const SizedBox(height: 20),
          Flexible(
            child: ListView(
              children: List.generate(4, (index) => _buildItem()),
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    title: "50",
                    color: MyColors.black,
                    size: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  MyText(
                    title: "Results found",
                    color: MyColors.grey,
                    size: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Expanded(
                child: DefaultButton(
                  title: "Show Results",
                  margin: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: MyText(
              title: "Remove filtration",
              color: MyColors.grey,
              size: 14,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: MyText(
              title: "Type of filtration",
              color: MyColors.black,
              size: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
