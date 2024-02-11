part of 'AddReservationWidgetsImports.dart';

class BuildReservationType extends StatelessWidget {
  final AddReservationData addReservationData;

  const BuildReservationType({Key? key, required this.addReservationData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ReservationTypeModel>>,
        GenericState<List<ReservationTypeModel>>>(
      bloc: addReservationData.typesBloc,
      builder: (context, state) {
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
                title: tr(context, 'reservationType'),
                color: MyColors.blackOpacity,
                size: 12,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  state.data.length,
                  (index) => InkWell(
                    onTap: ()=> addReservationData.selectType(index),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      decoration: BoxDecoration(
                        color: state.data[index].selected
                            ? MyColors.primary
                            : MyColors.grey.withOpacity(.7),
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
              )
            ],
          ),
        );
      },
    );
  }
}
