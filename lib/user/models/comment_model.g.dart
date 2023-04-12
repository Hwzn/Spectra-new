// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      userName: json['user_name'] as String,
      userImage: json['user_image'] as String,
      createdAt: json['created_at'] as String,
      comment: json['comment'] as String,
      likesCount: json['likes_count'] as int,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_image': instance.userImage,
      'created_at': instance.createdAt,
      'comment': instance.comment,
      'likes_count': instance.likesCount,
    };
