import 'package:json_annotation/json_annotation.dart';

part 'reservation_review_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ReservationReviewModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'reviewer_id')
  int reviewerId;
  @JsonKey(name: 'reviewed_id')
  int reviewedId;
  @JsonKey(name: 'reservation_id')
  int reservationId;
  @JsonKey(name: 'type')
  String type;
  @JsonKey(name: 'rate')
  String rate;
  @JsonKey(name: 'comment')
  String? comment;
  @JsonKey(name: 'is_available')
  String isAvailable;
  @JsonKey(name: 'is_reported')
  String isReported;
  @JsonKey(name: 'deleted_at')
  String? deletedAt;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'is_admin')
  int isAdmin;

  ReservationReviewModel({
    required this.id,
    required this.reviewerId,
    required this.reviewedId,
    required this.reservationId,
    required this.type,
    required this.rate,
    this.comment,
    required this.isAvailable,
    required this.isReported,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.isAdmin,
  });

  factory ReservationReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationReviewModelToJson(this);
}
