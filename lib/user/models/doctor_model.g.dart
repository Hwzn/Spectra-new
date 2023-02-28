// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
      id: json['id'] as int,
      image: json['image'] as String,
      avgRate: json['avg_rate'] as String,
      name: json['name'] as String,
      sessionsCount: json['sessions_count'] as int,
      sessionPrice: json['session_price'] as String,
      specializationId: json['specialization_id'] as int,
      specializationName: json['specialization_name'] as String,
      isFav: json['is_fav'] as String,
    );

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'avg_rate': instance.avgRate,
      'name': instance.name,
      'sessions_count': instance.sessionsCount,
      'session_price': instance.sessionPrice,
      'specialization_id': instance.specializationId,
      'specialization_name': instance.specializationName,
      'is_fav': instance.isFav,
    };
