import 'package:hwzn_base/user/models/time_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_day_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class AvailableDayModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'times')
  List<TimeModel> times;
  bool selected;

  AvailableDayModel({
    required this.id,
    required this.name,
    required this.times,
    this.selected = false,
  });

  factory AvailableDayModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableDayModelFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableDayModelToJson(this);
}
