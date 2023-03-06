import 'package:hwzn_base/general/models/dropdown_model/dropdown_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'comment_model.dart';

part 'blog_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class BlogModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'publisher_id')
  int publisherId;
  @JsonKey(name: 'publisher_name')
  String publisherName;
  @JsonKey(name: 'publisher_image')
  String publisherImage;
  @JsonKey(name: 'blogImages')
  List<DropDownModel> blogImages;
  @JsonKey(name: 'lat')
  String? lat;
  @JsonKey(name: 'lng')
  String? lng;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'category')
  String category;
  @JsonKey(name: 'comments_count')
  int commentsCount;
  @JsonKey(name: 'likes_count')
  int likesCount;
  @JsonKey(name: 'comments')
  List<CommentModel> comments;
  @JsonKey(name: 'content')
  String content;
  @JsonKey(name: 'time_posted')
  String timePosted;
  @JsonKey(name: 'is_liked')
  bool isLiked;

  BlogModel({
    required this.id,
    required this.publisherId,
    required this.publisherName,
    required this.blogImages,
     this.lat,
     this.lng,
     this.address,
    required this.category,
    required this.commentsCount,
    required this.likesCount,
    required this.comments,
    required this.content,
    required this.timePosted,
    required this.publisherImage,
    required this.isLiked,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}
