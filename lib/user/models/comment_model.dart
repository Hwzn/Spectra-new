import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class CommentModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'user_name')
  String userName;
  @JsonKey(name: 'user_image')
  String userImage;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'comment')
  String comment;
  @JsonKey(name: 'likes_count')
  int likesCount;

  CommentModel({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.createdAt,
    required this.comment,
    required this.likesCount,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}
