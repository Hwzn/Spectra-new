part of 'WorkingTimesImports.dart';

class WorkingTimesData {
  // blocs
  final GenericBloc<List<AvailableDayModel>> daysBloc = GenericBloc([]);
  final GenericBloc<List<TimeModel>> timesBloc = GenericBloc([]);

  // keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  // methods
  fetchData(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    user.availableTimes.first.selected = true;
    daysBloc.onUpdateData(user.availableTimes);
    timesBloc.onUpdateData(daysBloc.state.data.first.times);
  }

  saveTimes(BuildContext context) async {
    btnKey.currentState?.animateForward();
    await DoctorRepository(context).updateDoctorTimes(daysBloc.state.data);
    UserModel? user = context.read<UserCubit>().state.model;
    user.availableTimes = daysBloc.state.data;
    Storage.saveUserData(user);
    context.read<UserCubit>().onUpdateUserData(user);
    btnKey.currentState?.animateReverse();
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
    // timesBloc.state.data[index].selected =
    //     !timesBloc.state.data[index].selected;
    timesBloc.state.data[index].available =
    (timesBloc.state.data[index].available == 1 )? 0 : 1;
    timesBloc.onUpdateData(timesBloc.state.data);
    print("${timesBloc.state.data[index].id}");
    print("${timesBloc.state.data[index].available}");
  }
}
