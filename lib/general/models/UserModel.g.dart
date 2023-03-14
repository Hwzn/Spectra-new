// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      countryCode: json['country_code'] as String,
      phone: json['phone'] as String,
      fullPhone: json['full_phone'] as String,
      image: json['image'] as String,
      lang: json['lang'] as String,
      status: json['status'] as String,
      userType: json['user_type'] as String,
      avgRate: json['avg_rate'] as String,
      isNotify: json['is_notify'] as bool?,
      token: json['token'] as String,
      pets: (json['pests'] as List<dynamic>)
          .map((e) => PetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableTimes: (json['available_times'] as List<dynamic>)
          .map((e) => AvailableDayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cv: json['cv'] as String?,
      rescuePrice: json['rescue_price'] as String?,
      sessionPrice: json['session_price'] as String?,
      centerId: json['center_id'] as int?,
      centerName: json['center_name'] as String?,
      specializationId: json['specialization_id'] as int?,
      specializationName: json['specialization_name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'country_code': instance.countryCode,
      'phone': instance.phone,
      'full_phone': instance.fullPhone,
      'image': instance.image,
      'lang': instance.lang,
      'status': instance.status,
      'user_type': instance.userType,
      'avg_rate': instance.avgRate,
      'is_notify': instance.isNotify,
      'token': instance.token,
      'pests': instance.pets,
      'available_times': instance.availableTimes,
      'cv': instance.cv,
      'rescue_price': instance.rescuePrice,
      'session_price': instance.sessionPrice,
      'center_id': instance.centerId,
      'center_name': instance.centerName,
      'specialization_id': instance.specializationId,
      'specialization_name': instance.specializationName,
      'description': instance.description,
    };
