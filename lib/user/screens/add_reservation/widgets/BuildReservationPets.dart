part of 'AddReservationWidgetsImports.dart';

class BuildReservationPets extends StatelessWidget {
  final AddReservationData addReservationData;

  const BuildReservationPets({Key? key, required this.addReservationData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<PetModel>>,
        GenericState<List<PetModel>>>(
      bloc: addReservationData.petsBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Visibility(
            visible: state.data.isNotEmpty,
            replacement: Container(
              height: 150,
              alignment: Alignment.center,
              child: MyText(
                title: tr(context, 'noPets'),
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
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => addReservationData.selectPet(index),
                    child: Container(
                      width: 130,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: state.data[index].selected
                                ? MyColors.primary
                                : MyColors.white),
                        boxShadow: [
                          BoxShadow(
                            color: MyColors.greyWhite,
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedImage(
                            url: state.data[index].image,
                            height: 75,
                            width: 75,
                            haveRadius: false,
                            boxShape: BoxShape.circle,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          MyText(
                            title: state.data[index].name,
                            size: 13,
                            color: MyColors.black,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
