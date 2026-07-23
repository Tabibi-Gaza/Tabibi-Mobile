import 'appointment_status.dart';

class DoctorModel {
  final String name;
  final String specialty;
  final String experience;
  final String? image;
  final String calendar;
  final String time;
  final String address;
  final AppointmentStatus state;

  DoctorModel({
    required this.name,
    required this.specialty,
    required this.experience,
    this.image,
    required this.calendar,
    required this.time,
    required this.address,
    required this.state,
  });
}
