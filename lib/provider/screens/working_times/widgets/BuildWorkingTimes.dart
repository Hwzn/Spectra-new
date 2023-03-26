part of 'WorkingTimesWidgetsImports.dart';

class BuildWorkingTimes extends StatelessWidget {
  final WorkingTimesData workingTimesData;
  const BuildWorkingTimes({Key? key, required this.workingTimesData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
            title: "Select available time slots",
            color: MyColors.blackOpacity,
            size: 12,
          ),
          const SizedBox(height: 10),
          BlocBuilder<GenericBloc<List<TimeModel>>,
              GenericState<List<TimeModel>>>(
            bloc: workingTimesData.timesBloc,
            builder: (_, state) {
              if (state is GenericUpdateState) {
                return Visibility(
                  visible: state.data.isNotEmpty,
                  replacement: MyText(
                    title: "No Available Times",
                    color: MyColors.blackOpacity,
                    size: 12,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(
                      state.data.length,
                          (index) => InkWell(
                        onTap: () => workingTimesData.selectTimes(index),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * .25,
                          // margin: const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: state.data[index].available == 1
                                ? MyColors.primary
                                : MyColors.grey.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.center,
                          child: MyText(
                            title: state.data[index].hour.substring(0,5),
                            color: MyColors.white,
                            size: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
