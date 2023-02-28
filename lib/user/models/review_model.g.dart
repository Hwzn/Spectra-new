// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      id: json['id'] as int,
      avgRate: json['avg_rate'] as String,
      reviewerId: json['reviewer_id'] as int,
      reviewerName: json['reviewer_name'] as String,
      reviewerImage: json['reviewer_image'] as String,
      rate: json['rate'] as String,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avg_rate': instance.avgRate,
      'reviewer_id': instance.reviewerId,
      'reviewer_name': instance.reviewerName,
      'reviewer_image': instance.reviewerImage,
      'rate': instance.rate,
      'comment': instance.comment,
    };
