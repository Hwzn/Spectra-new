// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => DropDownModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      specializations: (json['specializations'] as List<dynamic>)
          .map((e) => DropDownModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularDoctors: (json['popularDoctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'banners': instance.banners,
      'specializations': instance.specializations,
      'popularDoctors': instance.popularDoctors,
    };
