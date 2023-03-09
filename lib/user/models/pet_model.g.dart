// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) => PetModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      details: json['details'] as String,
      image: json['image'] as String,
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'details': instance.details,
      'image': instance.image,
      'selected': instance.selected,
    };
