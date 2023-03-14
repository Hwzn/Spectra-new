import 'package:json_annotation/json_annotation.dart';

import 'notification_data_model.dart';

part 'notifications_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class NotificationsModel {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'type')
  String type;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'body')
  String body;
  @JsonKey(name: 'data')
  NotificationDataModel data;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'time')
  String time;

  NotificationsModel({
    required this.id,
    required this.type,
    required this.title,
    required this.body,
    required this.data,
    required this.status,
    required this.time,
  });

  factory NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsModelToJson(this);
}
