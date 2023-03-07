// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableDayModel _$AvailableDayModelFromJson(Map<String, dynamic> json) =>
    AvailableDayModel(
      id: json['id'] as int,
      name: json['name'] as String,
      times: (json['times'] as List<dynamic>)
          .map((e) => TimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AvailableDayModelToJson(AvailableDayModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'times': instance.times,
    };
