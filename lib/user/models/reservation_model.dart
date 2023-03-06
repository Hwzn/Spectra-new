import 'package:json_annotation/json_annotation.dart';

part 'reservation_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ReservationModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'date_time')
  String dateTime;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'pet_id')
  int petId;
  @JsonKey(name: 'pet_name')
  String petName;
  @JsonKey(name: 'pet_image')
  String petImage;
  @JsonKey(name: 'client_image')
  String clientImage;
  @JsonKey(name: 'client_name')
  String clientName;
  @JsonKey(name: 'client_avg_rate')
  String clientAvgRate;
  @JsonKey(name: 'doctor_image')
  String doctorImage;
  @JsonKey(name: 'doctor_name')
  String doctorName;
  @JsonKey(name: 'doctor_avg_rate')
  String doctorAvgRate;
  @JsonKey(name: 'doctor_specialization_id')
  int doctorSpecializationId;
  @JsonKey(name: 'doctor_specialization_name')
  String doctorSpecializationName;
  @JsonKey(name: 'doctor_session_price')
  String doctorSessionPrice;
  @JsonKey(name: 'doctor_info')
  String doctorInfo;

  ReservationModel({
    required this.id,
    required this.dateTime,
    required this.status,
    required this.petId,
    required this.petName,
    required this.petImage,
    required this.clientImage,
    required this.clientName,
    required this.clientAvgRate,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorAvgRate,
    required this.doctorSpecializationId,
    required this.doctorSpecializationName,
    required this.doctorSessionPrice,
    required this.doctorInfo,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
