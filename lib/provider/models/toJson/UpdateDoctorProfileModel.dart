import 'dart:io';

class UpdateDoctorProfileModel {
  String phone;
  String name;
  String email;
  String description;
  int specId;
  int centerId;
  File? cv;
  File? image;

  UpdateDoctorProfileModel({
    required this.phone,
    required this.name,
    required this.email,
    required this.description,
    required this.centerId,
    required this.specId,
    this.cv,
    this.image,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "description": description,
        "specialization_id": specId,
        "center_id": centerId,
        "cv": cv,
        "image": image,
      };
}
