import 'package:json_annotation/json_annotation.dart';

part 'pet_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PetModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'details')
  String details;
  @JsonKey(name: 'image')
  String image;

  PetModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.details,
    required this.image,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}
