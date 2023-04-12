part of 'AddReservationImports.dart';

class AddReservationData {
  // blocs
  final GenericBloc<bool> termsBloc = GenericBloc(false);
  final GenericBloc<List<AvailableDayModel>> daysBloc = GenericBloc([]);
  final GenericBloc<List<TimeModel>> timesBloc = GenericBloc([]);
  final GenericBloc<List<ReservationTypeModel>> typesBloc = GenericBloc([]);
  final GenericBloc<ReservationPricesModel> pricesBloc =
      GenericBloc(ReservationPricesModel(sessionPrices: 0, total: 0));
  final GenericBloc<List<PetModel>> petsBloc = GenericBloc([]);

  // lists
  List<int> timesList = [];
  List<ReservationTypeModel> typesList = [
    ReservationTypeModel(name: "My Pet", value: "session", selected: true),
    ReservationTypeModel(name: "Rescue Case", value: "rescue"),
  ];

  // variables
  num sessionPrice = 0;
  int doctorId = 0;

  //methods
  fetchData(BuildContext context, List<AvailableDayModel> daysList) async {
    var data = await UserRepository(context).getPets();
    petsBloc.onUpdateData(data);
    getDays(daysList);
    typesBloc.onUpdateData(typesList);
  }

  addReservation(BuildContext context) async {
    var selectedPets = petsBloc.state.data.where((e) => e.selected).isEmpty;
    var selectedTime = timesBloc.state.data.where((e) => e.selected).isEmpty;
    var selectedType = typesBloc.state.data.firstWhere((e) => e.selected).value;
    if(termsBloc.state.data == false){
      CustomToast.showSimpleToast(msg: "Please accept terms");
      return;
    }
    if(selectedTime){
      CustomToast.showSimpleToast(msg: "Please select a time");
      return;
    }
    if(selectedType == "session" && selectedPets){
      CustomToast.showSimpleToast(msg: "Please select a pet");
      return;
    }
    var petsList = petsBloc.state.data.where((element) => element.selected).toList();
    AddReservationModel model = AddReservationModel(
      doctorId: doctorId,
      petId: petsList.isNotEmpty ? petsList.first.id : null,
      cost: pricesBloc.state.data.total,
      workDayTimeId: timesBloc.state.data.firstWhere((e) => e.selected).id,
      reservationType: selectedType,
    );
    var result = await UserRepository(context).addReservation(model);
    if(result){
      AutoRouter.of(context).popAndPush(PaymentRoute());
    }
  }

  getDays(List<AvailableDayModel> daysList) {
    daysBloc.onUpdateData(daysList);
    if (daysList.isNotEmpty) {
      daysList.forEach((element) {
        element.selected = false;
      });
      daysList.first.selected = true;
      daysBloc.onUpdateData(daysList);
      var availableTimes =
          daysBloc.state.data.firstWhere((element) => element.selected == true);
      timesBloc.onUpdateData(availableTimes.times);
    }
  }

  selectPet(int index) {
    petsBloc.state.data.forEach((element) {
      element.selected = false;
    });
    petsBloc.state.data[index].selected = true;
    petsBloc.onUpdateData(petsBloc.state.data);
  }

  selectDay(int index) {
    daysBloc.state.data.forEach((element) {
      element.selected = false;
    });
    daysBloc.state.data[index].selected = true;
    daysBloc.onUpdateData(daysBloc.state.data);
    timesBloc.onUpdateData(daysBloc.state.data[index].times);
  }

  selectTimes(int index) {
    timesBloc.state.data.forEach((element) {
      element.selected = false;
    });
    timesBloc.state.data[index].selected = true;
    timesBloc.onUpdateData(timesBloc.state.data);
    // This was done when having the option to add multiple times
    // num total = sessionPrice * timesList.length;
    // pricesBloc.onUpdateData(
    //     ReservationPricesModel(sessionPrices: total, total: total));
    print("${timesBloc.state.data[index].id}");
  }

  selectType(int index) {
    typesBloc.state.data.forEach((element) {
      element.selected = false;
    });
    typesBloc.state.data[index].selected = true;
    typesBloc.onUpdateData(typesBloc.state.data);
  }
}
