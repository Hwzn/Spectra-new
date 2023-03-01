import 'dart:io';

class UpdateProfileModel {
  String? name;
  String? phone;
  String? email;
  File? image;

  UpdateProfileModel({
    this.name,
    this.phone,
    this.email,
    this.image,
  });

  Map<String, dynamic> toJson() => {
    "email": email,
    "phone": phone,
    "name": name,
    "image": image,
  };

}
