part of 'ProvAccountWidgetsImports.dart';

class BuildMyRatesSection extends StatelessWidget {
  final ProvAccountData provAccountData;

  const BuildMyRatesSection({Key? key, required this.provAccountData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MyText(
              title: tr(context, 'myRates'),
              color: MyColors.black,
              size: 14,
            ),
          ),
          Container(
              height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocBuilder<GenericBloc<String>, GenericState<String>>(
                    bloc: provAccountData.hourRateCubit,
                    builder: (context, state) {
                      return BuildProvAccRateItem(
                        price: state.data,
                        title: tr(context, 'hourRate'),
                        onTap: () => provAccountData.editRate(context),
                      );
                    },
                  ),
                  BlocBuilder<GenericBloc<String>, GenericState<String>>(
                    bloc: provAccountData.rescueCasesCubit,
                    builder: (context, state) {
                      return BuildProvAccRateItem(
                        price: state.data,
                        title: tr(context, 'rescueCases'),
                        onTap: () => provAccountData.editCases(context),
                      );
                    },
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
