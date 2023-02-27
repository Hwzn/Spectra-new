// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CenterModel _$CenterModelFromJson(Map<String, dynamic> json) => CenterModel(
      id: json['id'] as int,
      invitationCode: json['invitation_code'] as String,
      name: json['name'] as String,
      details: json['details'] as String,
      fullPhone: json['full_phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$CenterModelToJson(CenterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invitation_code': instance.invitationCode,
      'name': instance.name,
      'details': instance.details,
      'full_phone': instance.fullPhone,
      'email': instance.email,
    };
