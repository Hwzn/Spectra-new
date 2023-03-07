import 'package:json_annotation/json_annotation.dart';

import 'available_day_model.dart';

part 'doctor_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class DoctorModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'avg_rate')
  String avgRate;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'sessions_count')
  int? sessionsCount;
  @JsonKey(name: 'session_price')
  String sessionPrice;
  @JsonKey(name: 'specialization_id')
  int specializationId;
  @JsonKey(name: 'specialization_name')
  String specializationName;
  @JsonKey(name: 'is_fav')
  String? isFav;
  @JsonKey(name: 'center_id')
  int? centerId;
  @JsonKey(name: 'center_name')
  String? centerName;
  @JsonKey(name: 'center_image')
  String? centerImage;
  @JsonKey(name: 'available_times')
  List<AvailableDayModel>? availableTimes;

  DoctorModel({
    required this.id,
    required this.image,
    required this.avgRate,
    required this.name,
    this.sessionsCount,
    required this.sessionPrice,
    required this.specializationId,
    required this.specializationName,
    this.isFav,
    this.centerId,
    this.centerName,
    this.centerImage,
    this.availableTimes,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);
}
