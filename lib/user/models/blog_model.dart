import 'package:hwzn_base/general/models/dropdown_model/dropdown_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'blog_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class BlogModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'publisher_id')
  int publisherId;
  @JsonKey(name: 'publisher_name')
  String publisherName;
  @JsonKey(name: 'blogImages')
  List<DropDownModel> blogImages;
  @JsonKey(name: 'lat')
  String lat;
  @JsonKey(name: 'lng')
  String lng;
  @JsonKey(name: 'address')
  String address;
  @JsonKey(name: 'category')
  String category;
  @JsonKey(name: 'comments_count')
  int commentsCount;
  @JsonKey(name: 'likes_count')
  int likesCount;

  BlogModel({
    required this.id,
    required this.publisherId,
    required this.publisherName,
    required this.blogImages,
    required this.lat,
    required this.lng,
    required this.address,
    required this.category,
    required this.commentsCount,
    required this.likesCount,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}
