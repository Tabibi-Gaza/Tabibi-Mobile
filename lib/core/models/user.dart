import 'package:tabibi_app/core/models/gender.dart';

class User {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  String? address;
  Gender? gender;
  String? password;
  DateTime? birthDate;
  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.gender,
    this.password,
     this.address,
     this.birthDate,
  });
}
