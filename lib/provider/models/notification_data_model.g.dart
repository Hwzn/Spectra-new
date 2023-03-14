// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationDataModel _$NotificationDataModelFromJson(
        Map<String, dynamic> json) =>
    NotificationDataModel(
      dataId: json['data_id'] as int,
      message: json['message'] as String,
      originalMessage: json['original_message'] as String,
    );

Map<String, dynamic> _$NotificationDataModelToJson(
        NotificationDataModel instance) =>
    <String, dynamic>{
      'data_id': instance.dataId,
      'message': instance.message,
      'original_message': instance.originalMessage,
    };
