// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      roomId: json['room_id'] as int,
      lastMessage: json['last_message'] as String,
      lastMessageCreatedAt: json['last_message_created_at'] as String,
      receiverId: json['receiver_id'] as int,
      receiverName: json['receiver_name'] as String,
      receiverImage: json['receiver_image'] as String,
      unseenMessagesCount: json['unseen_messages_count'] as int,
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'room_id': instance.roomId,
      'last_message': instance.lastMessage,
      'last_message_created_at': instance.lastMessageCreatedAt,
      'receiver_id': instance.receiverId,
      'receiver_name': instance.receiverName,
      'receiver_image': instance.receiverImage,
      'unseen_messages_count': instance.unseenMessagesCount,
    };
