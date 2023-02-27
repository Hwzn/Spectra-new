class RegisterModel {
  String invitationCode;
  String name;
  String countryCode;
  String phone;
  String email;
  String password;
  String? image;
  String? deviceId;
  String deviceType;

  RegisterModel({
    required this.email,
    required this.phone,
    required this.password,
    required this.invitationCode,
    required this.name,
    required this.countryCode,
    this.image,
    required this.deviceId,
    required this.deviceType,
  });

  Map<String, dynamic> toJson() => {
        "invitation_code": invitationCode,
        "email": email,
        "phone": phone,
        "password": password,
        "device_id": deviceId,
        "device_type": deviceType,
        "country_code": countryCode,
        "name": name,
        "image": image,
      };
}
