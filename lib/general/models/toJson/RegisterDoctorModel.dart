
import 'dart:io';

class RegisterDoctorModel {
  String invitationCode;
  String name;
  String countryCode;
  String phone;
  String email;
  String password;
  String? image;
  int specializationId;
  int centerId;
  num? rescuePrice;
  num? sessionPrice;
  File? cv;

  RegisterDoctorModel({
    required this.email,
    required this.phone,
    required this.password,
    required this.invitationCode,
    required this.name,
    required this.countryCode,
    required this.specializationId,
    required this.centerId,
    this.image,
    this.rescuePrice,
    this.sessionPrice,
    this.cv,
  });

  Map<String, dynamic> toJson() => {
    "invitation_code": invitationCode,
    "email": email,
    "phone": phone,
    "password": password,
    "country_code": countryCode,
    "name": name,
    "image": image,
    "specialization_id": specializationId,
    "center_id": centerId,
    "rescue_price": rescuePrice,
    "session_price": sessionPrice,
    "cv": cv,
  };
}