part of 'SessionWidgetsImports.dart';

class BuildSessionChangeDay extends StatelessWidget {
  final SessionData sessionData;
  const BuildSessionChangeDay({Key? key, required this.sessionData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<AvailableDayModel>>,
        GenericState<List<AvailableDayModel>>>(
      bloc: sessionData.daysBloc,
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
                  title: tr(context, 'availableDays'),
                  color: MyColors.blackOpacity,
                  size: 12,
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: state.data.isNotEmpty,
                  replacement: MyText(
                    title: tr(context, 'noAvailableTimes'),
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
                              onTap: ()=> sessionData.selectDay(index),
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
                                  title: state.data[index].name,
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
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: JumpingDots(
              color: MyColors.secondary,
              radius: 10,
              numberOfDots: 3,
            ),
          );
        }
      },
    );
  }
}
