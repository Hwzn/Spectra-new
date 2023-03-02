// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DropDownModel _$DropDownModelFromJson(Map<String, dynamic> json) =>
    DropDownModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$DropDownModelToJson(DropDownModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'selected': instance.selected,
    };
