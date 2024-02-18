part of 'MainWidgetsImports.dart';

class BuildFilterBottomSheet extends StatelessWidget {
  final MainPageData mainPageData;

  const BuildFilterBottomSheet({Key? key, required this.mainPageData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyText(
            title: tr(context, 'filter'),
            color: MyColors.black,
            size: 20,
          ),
          const SizedBox(height: 20),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: List.generate(
                mainPageData.types.length,
                (index) => _buildItem(
                  model: mainPageData.types[index],
                ),
              ),
            ),
          ),
          DefaultButton(
            title: tr(context, 'showResults'),
            // margin: EdgeInsets.zero,
            margin: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 20,
              top: 10,
            ),
            onTap: () => mainPageData.addFilter(context),
          ),
          // Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         MyText(
          //           title: "50",
          //           color: MyColors.black,
          //           size: 16,
          //           fontWeight: FontWeight.normal,
          //         ),
          //         MyText(
          //           title: "Results found",
          //           color: MyColors.grey,
          //           size: 14,
          //           fontWeight: FontWeight.normal,
          //         ),
          //       ],
          //     ),
          //     const SizedBox(width: 30),
          //     Expanded(
          //       child: DefaultButton(
          //         title: "Show Results",
          //         margin: EdgeInsets.zero,
          //       ),
          //     ),
          //   ],
          // ),
          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 20),
          //   child: MyText(
          //     title: "Remove filtration",
          //     color: MyColors.grey,
          //     size: 14,
          //     fontWeight: FontWeight.normal,
          //     decoration: TextDecoration.underline,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildItem({required FilterTypesModel model}) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: model.blocName,
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: Row(
                  children: [
                    Radio(
                      value: model.descValue,
                      groupValue: state.data,
                      onChanged: (int? v) =>
                          model.blocName.onUpdateData(model.descValue),
                    ),
                    Expanded(
                      child: MyText(
                        title: model.descTitle,
                        color: MyColors.black,
                        size: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: Row(
                  children: [
                    Radio(
                      value: model.ascValue,
                      groupValue: state.data,
                      onChanged: (int? v) =>
                          model.blocName.onUpdateData(model.ascValue),
                    ),
                    Expanded(
                      child: MyText(
                        title: model.ascTitle,
                        color: MyColors.black,
                        size: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
