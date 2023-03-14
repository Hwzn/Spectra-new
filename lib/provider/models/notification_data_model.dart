import 'package:json_annotation/json_annotation.dart';

part 'notification_data_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class NotificationDataModel {
  @JsonKey(name: 'data_id')
  int dataId;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'original_message')
  String originalMessage;

  NotificationDataModel({
    required this.dataId,
    required this.message,
    required this.originalMessage,
  });

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDataModelToJson(this);
}
