import 'package:hwzn_base/general/models/dropdown_model/dropdown_model.dart';
import 'package:hwzn_base/user/models/doctor_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class HomeModel {
  @JsonKey(name: 'banners')
  List<DropDownModel> banners;
  @JsonKey(name: 'specializations')
  List<DropDownModel> specializations;
  @JsonKey(name: 'popularDoctors')
  List<DoctorModel> popularDoctors;

  HomeModel({
    required this.banners,
    required this.specializations,
    required this.popularDoctors,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
