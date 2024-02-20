part of 'ReviewSessionImports.dart';

class ReviewSessionData {
  // variables
  double rate = 0;

  // methods
  submitRate(BuildContext context, int resId, int petId) async {
    var user = context.read<UserCubit>().state.model;
    RateSessionModel model = RateSessionModel(
      reservationId: resId,
      userId: user.id,
      rate: rate,
      duration: 30,
      comment: '',
      petId: petId,
    );
    var result = await UserRepository(context).reviewSession(model);
    if(result == true){
      AutoRouter.of(context).pop();
    }
  }

}