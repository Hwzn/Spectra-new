import 'package:hwzn_base/user/models/doctor_model.dart';
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
  @JsonKey(name: 'doctor_details')
  DoctorModel doctorDetails;


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
    required this.doctorDetails,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
