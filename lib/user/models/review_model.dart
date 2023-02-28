import 'package:json_annotation/json_annotation.dart';

part 'review_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ReviewModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'avg_rate')
  String avgRate;
  @JsonKey(name: 'reviewer_id')
  int reviewerId;
  @JsonKey(name: 'reviewer_name')
  String reviewerName;
  @JsonKey(name: 'reviewer_image')
  String reviewerImage;
  @JsonKey(name: 'rate')
  String rate;
  @JsonKey(name: 'comment')
  String? comment;

  ReviewModel({
    required this.id,
    required this.avgRate,
    required this.reviewerId,
    required this.reviewerName,
    required this.reviewerImage,
    required this.rate,
    this.comment,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}
