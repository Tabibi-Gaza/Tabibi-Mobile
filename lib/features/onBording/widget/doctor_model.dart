class DoctorModel {
  final String name;
  final String specialty;
  final String experience;
  final String? image;

  DoctorModel({
    required this.name,
    required this.specialty,
    required this.experience,
    this.image,
  });
}
