part of 'AddReservationImports.dart';

class AddReservation extends StatefulWidget {
  final List<AvailableDayModel> daysList;

  const AddReservation({Key? key, required this.daysList}) : super(key: key);

  @override
  State<AddReservation> createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
  AddReservationData addReservationData = AddReservationData();

  @override
  void initState() {
    addReservationData.getDays(widget.daysList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: const DefaultAppBar(title: "Make a reservation"),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          BlocBuilder<GenericBloc<List<AvailableDayModel>>,
              GenericState<List<AvailableDayModel>>>(
            bloc: addReservationData.daysBloc,
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
                        title: "Available Days",
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
                                    onTap: () {
                                      state.data.forEach((element) {
                                        element.selected = false;
                                      });
                                      state.data[index].selected = true;
                                      addReservationData.daysBloc
                                          .onUpdateData(state.data);
                                      addReservationData.timesBloc.onUpdateData(
                                          state.data[index].times);
                                    },
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
                return SizedBox();
              }
            },
          ),
          BuildAvailableTime(addReservationData: addReservationData),
          const BuildReservationType(),
          const BuildPaymentInfo(),
          BuildAcceptTerms(addReservationData: addReservationData),
        ],
      ),
      bottomNavigationBar: DefaultButton(
        title: "Make a reservation",
        borderRadius: BorderRadius.circular(15),
        margin: const EdgeInsets.all(20),
        onTap: () => AutoRouter.of(context).popAndPush(PaymentRoute()),
      ),
    );
  }
}
