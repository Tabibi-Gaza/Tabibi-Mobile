import 'package:tabibi_app/core/models/appointment_status.dart';

class AppointmentModel {
  final String name;
  final String specialty;
  final String image;
  final String initials;
  final AppointmentStatus status;
  final String date;
  final String time;

  AppointmentModel({
    required this.name,
    required this.specialty,
    required this.image,
    required this.initials,
    required this.status,
    required this.date,
    required this.time,
  });


  bool get isConfirmed =>
      status == AppointmentStatus.confirmed;
}