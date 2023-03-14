// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationReviewModel _$ReservationReviewModelFromJson(
        Map<String, dynamic> json) =>
    ReservationReviewModel(
      id: json['id'] as int,
      reviewerId: json['reviewer_id'] as int,
      reviewedId: json['reviewed_id'] as int,
      reservationId: json['reservation_id'] as int,
      type: json['type'] as String,
      rate: json['rate'] as String,
      comment: json['comment'] as String?,
      isAvailable: json['is_available'] as String,
      isReported: json['is_reported'] as String,
      deletedAt: json['deleted_at'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      isAdmin: json['is_admin'] as int,
    );

Map<String, dynamic> _$ReservationReviewModelToJson(
        ReservationReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reviewer_id': instance.reviewerId,
      'reviewed_id': instance.reviewedId,
      'reservation_id': instance.reservationId,
      'type': instance.type,
      'rate': instance.rate,
      'comment': instance.comment,
      'is_available': instance.isAvailable,
      'is_reported': instance.isReported,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_admin': instance.isAdmin,
    };
