// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) =>
    ReservationModel(
      id: json['id'] as int,
      dateTime: json['date_time'] as String,
      status: json['status'] as String,
      petId: json['pet_id'] as int,
      petName: json['pet_name'] as String,
      petImage: json['pet_image'] as String,
      clientImage: json['client_image'] as String,
      clientName: json['client_name'] as String,
      clientAvgRate: json['client_avg_rate'] as String,
      doctorImage: json['doctor_image'] as String,
      doctorName: json['doctor_name'] as String,
      doctorAvgRate: json['doctor_avg_rate'] as String,
      doctorSpecializationId: json['doctor_specialization_id'] as int,
      doctorSpecializationName: json['doctor_specialization_name'] as String,
      doctorSessionPrice: json['doctor_session_price'] as String,
      doctorInfo: json['doctor_info'] as String,
    );

Map<String, dynamic> _$ReservationModelToJson(ReservationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_time': instance.dateTime,
      'status': instance.status,
      'pet_id': instance.petId,
      'pet_name': instance.petName,
      'pet_image': instance.petImage,
      'client_image': instance.clientImage,
      'client_name': instance.clientName,
      'client_avg_rate': instance.clientAvgRate,
      'doctor_image': instance.doctorImage,
      'doctor_name': instance.doctorName,
      'doctor_avg_rate': instance.doctorAvgRate,
      'doctor_specialization_id': instance.doctorSpecializationId,
      'doctor_specialization_name': instance.doctorSpecializationName,
      'doctor_session_price': instance.doctorSessionPrice,
      'doctor_info': instance.doctorInfo,
    };
