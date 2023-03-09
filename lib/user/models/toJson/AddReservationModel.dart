
class AddReservationModel {
  int doctorId;
  int petId;
  num cost;
  int workDayTimeId;
  String reservationType;

  AddReservationModel({
    required this.doctorId,
    required this.petId,
    required this.cost,
    required this.reservationType,
    required this.workDayTimeId,
  });

  Map<String, dynamic> toJson() => {
    "doctor_id": doctorId,
    "pet_id": petId,
    "cost": cost,
    "doctor_day_time_id": workDayTimeId,
    "reservation_type": reservationType
  };
}