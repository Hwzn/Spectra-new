// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorDetailsModel _$DoctorDetailsModelFromJson(Map<String, dynamic> json) =>
    DoctorDetailsModel(
      doctor: DoctorModel.fromJson(json['doctor'] as Map<String, dynamic>),
      doctorInfo: json['doctor_info'] as String?,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorDetailsModelToJson(DoctorDetailsModel instance) =>
    <String, dynamic>{
      'doctor': instance.doctor,
      'doctor_info': instance.doctorInfo,
      'reviews': instance.reviews,
    };
