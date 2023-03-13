import 'package:json_annotation/json_annotation.dart';

part 'wallet_model.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class WalletModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'total_balance')
  num totalBalance;
  @JsonKey(name: 'total_rescue_balance')
  String totalRescueBalance;
  @JsonKey(name: 'total_session_balance')
  String totalSessionBalance;

  WalletModel({
    required this.id,
    required this.userId,
    required this.totalBalance,
    required this.totalRescueBalance,
    required this.totalSessionBalance,
  });

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
