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
      doctorDetails:
          DoctorModel.fromJson(json['doctor_details'] as Map<String, dynamic>),
      reviewBefore: json['review_before'] as bool,
      review: json['review'] == null
          ? null
          : ReservationReviewModel.fromJson(
              json['review'] as Map<String, dynamic>),
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
      'doctor_details': instance.doctorDetails,
      'review_before': instance.reviewBefore,
      'review': instance.review,
    };
