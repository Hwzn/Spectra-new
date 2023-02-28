import 'package:json_annotation/json_annotation.dart';

part 'chat_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ChatModel {
  @JsonKey(name: 'room_id')
  int roomId;
  @JsonKey(name: 'last_message')
  String lastMessage;
  @JsonKey(name: 'last_message_created_at')
  String lastMessageCreatedAt;
  @JsonKey(name: 'receiver_id')
  int receiverId;
  @JsonKey(name: 'receiver_name')
  String receiverName;
  @JsonKey(name: 'receiver_image')
  String receiverImage;
  @JsonKey(name: 'unseen_messages_count')
  int unseenMessagesCount;

  ChatModel({
    required this.roomId,
    required this.lastMessage,
    required this.lastMessageCreatedAt,
    required this.receiverId,
    required this.receiverName,
    required this.receiverImage,
    required this.unseenMessagesCount,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatModelToJson(this);
}
