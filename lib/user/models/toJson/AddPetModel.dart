
import 'dart:io';

class AddPetModel{
  File image;
  String name;
  String details;
  List<dynamic> files;

  AddPetModel({
    required this.image,
    required this.details,
    required this.name,
    required this.files,
  });

  Map<String, dynamic> toJson() => {
    "name": name,
    "files[]": files,
    "details": details,
    "image": image,
  };
}