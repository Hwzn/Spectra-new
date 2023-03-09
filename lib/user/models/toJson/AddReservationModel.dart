
class AddReservationModel {
  int doctorId;
  int petId;
  num cost;
  int workDayId;
  List<int> timesIds;
  String reservationType;

  AddReservationModel({
    required this.doctorId,
    required this.petId,
    required this.cost,
    required this.workDayId,
    required this.reservationType,
    required this.timesIds,
  });

  Map<String, dynamic> toJson() => {
    "doctor_id": doctorId,
    "pet_id": petId,
    "cost": cost,
    "work_day_id": workDayId,
    "work_time_id[]": timesIds,
    "reservation_type": reservationType
  };
}