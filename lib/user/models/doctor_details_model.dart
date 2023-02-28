import 'package:hwzn_base/user/models/review_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'doctor_model.dart';

part 'doctor_details_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class DoctorDetailsModel {
  @JsonKey(name: 'doctor')
  DoctorModel doctor;
  @JsonKey(name: 'doctor_info')
  String doctorInfo;
  @JsonKey(name: 'reviews')
  List<ReviewModel> reviews;
  @JsonKey(name: 'workDays')
  List<dynamic> workDays;
  @JsonKey(name: 'time')
  List<dynamic> time;

  DoctorDetailsModel({
    required this.doctor,
    required this.doctorInfo,
    required this.reviews,
    required this.workDays,
    required this.time,
  });

  factory DoctorDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorDetailsModelToJson(this);
}
