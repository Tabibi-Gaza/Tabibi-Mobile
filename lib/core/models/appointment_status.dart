enum AppointmentStatus {
  confirmed, 
  pending,


}
extension AppointmentStatusExtension on AppointmentStatus{
String get arabicState {
  switch (this) {
    case AppointmentStatus.confirmed:
      return "مؤكد";
    case AppointmentStatus.pending:
      return "قيد الانتظار";
  }}

  String get englishState {
    switch (this) {
      case AppointmentStatus.confirmed:
        return "confirmed";
      case AppointmentStatus.pending:
        return "pending";
    }

}}