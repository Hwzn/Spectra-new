import 'package:json_annotation/json_annotation.dart';

part 'prov_home_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class ProvHomeModel {
  @JsonKey(name: 'total_reservations_count')
  num totalReservationsCount;
  @JsonKey(name: 'total_ratings_count')
  num totalRatingsCount;
  @JsonKey(name: 'total_balance')
  num totalBalance;

  ProvHomeModel({
    required this.totalReservationsCount,
    required this.totalRatingsCount,
    required this.totalBalance,
  });

  factory ProvHomeModel.fromJson(Map<String, dynamic> json) =>
      _$ProvHomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProvHomeModelToJson(this);
}
