// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeModel _$TimeModelFromJson(Map<String, dynamic> json) => TimeModel(
      id: json['id'] as int,
      hour: json['hour'] as String,
      available: json['available'] as int,
    );

Map<String, dynamic> _$TimeModelToJson(TimeModel instance) => <String, dynamic>{
      'id': instance.id,
      'hour': instance.hour,
      'available': instance.available,
    };
