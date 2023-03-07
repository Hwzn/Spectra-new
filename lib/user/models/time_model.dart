import 'package:json_annotation/json_annotation.dart';

part 'time_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class TimeModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'hour')
  String hour;
  @JsonKey(name: 'available')
  int available;

  TimeModel({
    required this.id,
    required this.hour,
    required this.available,
  });

  factory TimeModel.fromJson(Map<String, dynamic> json) =>
      _$TimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$TimeModelToJson(this);
}
