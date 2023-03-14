// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prov_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvHomeModel _$ProvHomeModelFromJson(Map<String, dynamic> json) =>
    ProvHomeModel(
      totalReservationsCount: json['total_reservations_count'] as num,
      totalRatingsCount: json['total_ratings_count'] as num,
      totalBalance: json['total_balance'] as num,
    );

Map<String, dynamic> _$ProvHomeModelToJson(ProvHomeModel instance) =>
    <String, dynamic>{
      'total_reservations_count': instance.totalReservationsCount,
      'total_ratings_count': instance.totalRatingsCount,
      'total_balance': instance.totalBalance,
    };
