import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/models/doctor_model.dart';
import 'package:tabibi_app/core/models/appointment_status.dart';

class DoctorsList {
   static List<DoctorModel> doctors = [
    DoctorModel(
      name: "د. أحمد محمود",
      specialty: "استشاري أمراض القلب",
      experience: "12 سنة خبرة",
      image: "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?w=400&h=400&fit=crop",
      calendar: "15 يوليو 2026",
      time: "10:00 صباحًا",
      address: "عيادة القلب التخصصية نابلس - شارع رفيديا",
      state: AppointmentStatus.confirmed,
    ),
    DoctorModel(
      name: "د. رائد خالد",
      specialty: "أخصائي باطنية",
      experience: "8 سنوات خبرة",
      image: "https://images.unsplash.com/photo-1622253692010-333f2da6031d?w=400&h=400&fit=crop",
      calendar: "16 يوليو 2026",
      time: "2:00 مساءً",
      address: "مستشفى الحكمة - جناح الباطنية",
      state: AppointmentStatus.pending,
    ),
    DoctorModel(
      name: "د. فاطمة علي",
      specialty: "أخصائية أطفال",
      experience: "10 سنوات خبرة",
      image: "https://images.unsplash.com/photo-1559839734-2b71ea197ec2?w=400&h=400&fit=crop",
      calendar: "17 يوليو 2026",
      time: "11:30 صباحًا",
      address: "عيادة الأطفال الحديثة - رام الله",
      state: AppointmentStatus.confirmed,
    ),
    DoctorModel(
      name: "د. محمد سعيد",
      specialty: "استشاري جراحة عامة",
      experience: "15 سنة خبرة",
      image: "https://images.unsplash.com/photo-1537368910025-700350fe46c7?w=400&h=400&fit=crop",
      calendar: "18 يوليو 2026",
      time: "9:00 صباحًا",
      address: "مجمع الجراحين - نابلس",
      state: AppointmentStatus.pending,
    ),
    DoctorModel(
      name: "د. سارة أحمد",
      specialty: "أخصائية نساء وتوليد",
      experience: "7 سنوات خبرة",
      image: "https://images.unsplash.com/photo-1594824476967-48c8b964273f?w=400&h=400&fit=crop",
      calendar: "19 يوليو 2026",
      time: "4:00 مساءً",
      address: "عيادة النساء والتوليد - طولكرم",
      state: AppointmentStatus.confirmed,
    ),
  ];


}

