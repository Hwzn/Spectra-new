// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) =>
    NotificationsModel(
      id: json['id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      data:
          NotificationDataModel.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String,
      time: json['time'] as String,
    );

Map<String, dynamic> _$NotificationsModelToJson(NotificationsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'status': instance.status,
      'time': instance.time,
    };
