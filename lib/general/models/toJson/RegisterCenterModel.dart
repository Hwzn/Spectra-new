 class RegisterCenterModel {
   String invitationCode;
   String name;
   String countryCode;
   String phone;
   String email;
   String details;
   List<int>? doctorsIds;


   RegisterCenterModel({
     required this.email,
     required this.phone,
     required this.invitationCode,
     required this.name,
     required this.countryCode,
     required this.details,
     this.doctorsIds,
   });

   Map<String, dynamic> toJson() => {
     "invitation_code": invitationCode,
     "email": email,
     "phone": phone,
     "country_code": countryCode,
     "name": name,
     "details": details,
     "doctor_id[]": doctorsIds,
   };

 }