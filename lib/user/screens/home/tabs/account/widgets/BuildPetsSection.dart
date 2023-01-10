part of 'AccountWidgetsImports.dart';

class BuildPetsSection extends StatelessWidget {
  final AccountData accountData;

  const BuildPetsSection({Key? key, required this.accountData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  title: "My Pets",
                  color: MyColors.black,
                  size: 14,
                ),
                MyText(
                  title: "+ add a pet",
                  color: MyColors.primary,
                  size: 14,
                ),
              ],
            ),
          ),
          BlocBuilder<GenericBloc<List<String>>, GenericState<List<String>>>(
            bloc: accountData.petsBloc,
            builder: (context, state) {
              return Visibility(
                visible: state.data.isNotEmpty,
                replacement: Container(
                  height: 150,
                  alignment: Alignment.center,
                  child: MyText(
                    title: "No Pets",
                    size: 16,
                    color: MyColors.primary,
                  ),
                ),
                child: Container(
                  height: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.data.length,
                    itemBuilder: (_, index) => BuildPetItem(
                      index: index,
                      accountData: accountData,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
