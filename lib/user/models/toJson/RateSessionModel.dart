
class RateSessionModel {
  int reservationId;
  int userId;
  int duration;
  double rate;
  String? comment;
  int petId;

  RateSessionModel({
    required this.reservationId,
    required this.userId,
    required this.duration,
    required this.rate,
    this.comment,
    required this.petId,
  });

  Map<String, dynamic> toJson() => {
    "reservation_id": reservationId,
    "user_id": userId,
    "duration": duration,
    "rate": rate,
    "comment": comment,
    "pet_id": petId,
  };
}