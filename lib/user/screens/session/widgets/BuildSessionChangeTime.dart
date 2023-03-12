part of 'SessionWidgetsImports.dart';

class BuildSessionChangeTime extends StatelessWidget {
  final SessionData sessionData;
  const BuildSessionChangeTime({Key? key, required this.sessionData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<TimeModel>>,
        GenericState<List<TimeModel>>>(
      bloc: sessionData.timesBloc,
      builder: (_, state) {
        if (state is GenericUpdateState) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: MyColors.greyWhite,
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  title: "Available Times",
                  color: MyColors.blackOpacity,
                  size: 12,
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: state.data.isNotEmpty,
                  replacement: MyText(
                    title: "No Available Times",
                    color: MyColors.blackOpacity,
                    size: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 30,
                        margin: const EdgeInsets.only(top: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            state.data.length,
                                (index) => InkWell(
                              onTap: () => sessionData.selectTimes(index),
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 3),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10),
                                decoration: BoxDecoration(
                                  color: state.data[index].selected
                                      ? MyColors.primary
                                      : MyColors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                alignment: Alignment.center,
                                child: MyText(
                                  // title: state.data[index].hour,
                                  title: state.data[index].hour.substring(0,5),
                                  color: MyColors.white,
                                  size: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
