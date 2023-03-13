// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => WalletModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      totalBalance: json['total_balance'] as num,
      totalRescueBalance: json['total_rescue_balance'] as String,
      totalSessionBalance: json['total_session_balance'] as String,
    );

Map<String, dynamic> _$WalletModelToJson(WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'total_balance': instance.totalBalance,
      'total_rescue_balance': instance.totalRescueBalance,
      'total_session_balance': instance.totalSessionBalance,
    };
