// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetInfoModel _$PetInfoModelFromJson(Map<String, dynamic> json) => PetInfoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      details: json['details'] as String,
      image: json['image'] as String,
      petAttachments: (json['petAttachments'] as List<dynamic>)
          .map((e) => PetAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      sessions: json['sessions'] as List<dynamic>,
    );

Map<String, dynamic> _$PetInfoModelToJson(PetInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
      'image': instance.image,
      'petAttachments': instance.petAttachments,
      'sessions': instance.sessions,
    };

PetAttachment _$PetAttachmentFromJson(Map<String, dynamic> json) =>
    PetAttachment(
      url: json['url'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$PetAttachmentToJson(PetAttachment instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
    };
