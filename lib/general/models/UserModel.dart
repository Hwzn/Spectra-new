import 'package:hwzn_base/user/models/available_day_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../user/models/pet_model.dart';

part 'UserModel.g.dart';

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class UserModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'uuid')
  String? uuid;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'country_code')
  String countryCode;
  @JsonKey(name: 'phone')
  String phone;
  @JsonKey(name: 'full_phone')
  String fullPhone;
  @JsonKey(name: 'image')
  String image;
  @JsonKey(name: 'lang')
  String lang;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'user_type')
  String userType;
  @JsonKey(name: 'avg_rate')
  String avgRate;
  @JsonKey(name: 'is_notify')
  bool? isNotify;
  @JsonKey(name: 'token')
  String token;
  @JsonKey(name: 'pests')
  List<PetModel> pets;
  @JsonKey(name: 'available_times')
  List<AvailableDayModel> availableTimes;
  @JsonKey(name: 'cv')
  String cv;
  @JsonKey(name: 'rescue_price')
  String rescuePrice;
  @JsonKey(name: 'session_price')
  String sessionPrice;


  UserModel({
    required this.id,
    this.uuid,
    required this.name,
    required this.email,
    required this.countryCode,
    required this.phone,
    required this.fullPhone,
    required this.image,
    required this.lang,
    required this.status,
    required this.userType,
    required this.avgRate,
    this.isNotify,
    required this.token,
    required this.pets,
    required this.availableTimes,
    required this.cv,
    required this.rescuePrice,
    required this.sessionPrice,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
