import 'package:json_annotation/json_annotation.dart';

part 'center_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class CenterModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'invitation_code')
  String invitationCode;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'details')
  String details;
  @JsonKey(name: 'full_phone')
  String fullPhone;
  @JsonKey(name: 'email')
  String email;

  CenterModel({
    required this.id,
    required this.invitationCode,
    required this.name,
    required this.details,
    required this.fullPhone,
    required this.email,
  });

  factory CenterModel.fromJson(Map<String, dynamic> json) =>
      _$CenterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CenterModelToJson(this);
}
