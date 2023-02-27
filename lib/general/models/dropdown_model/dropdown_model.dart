import 'package:json_annotation/json_annotation.dart'; 

part 'dropdown_model.g.dart'; 

@JsonSerializable(nullable: false, ignoreUnannotated: false)
class DropDownModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;

  DropDownModel({this.id, this.name, this.image});

   factory DropDownModel.fromJson(Map<String, dynamic> json) => _$DropDownModelFromJson(json);

   Map<String, dynamic> toJson() => _$DropDownModelToJson(this);
}

