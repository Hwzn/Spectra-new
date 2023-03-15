import 'package:json_annotation/json_annotation.dart';

part 'pet_info_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PetInfoModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'details')
  String details;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'petAttachments')
  List<PetAttachment> petAttachments;
  @JsonKey(name: 'sessions')
  List sessions;

  PetInfoModel({
    required this.id,
    required this.name,
    required this.details,
    required this.image,
    required this.petAttachments,
    required this.sessions,
  });

  factory PetInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PetInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetInfoModelToJson(this);
}

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class PetAttachment {
  @JsonKey(name: 'url')
  String url;
  @JsonKey(name: 'type')
  String type;

  PetAttachment({required this.url, required this.type});

  factory PetAttachment.fromJson(Map<String, dynamic> json) =>
      _$PetAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$PetAttachmentToJson(this);
}
