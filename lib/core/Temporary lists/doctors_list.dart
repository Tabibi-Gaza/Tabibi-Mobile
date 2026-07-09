import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/features/onBording/widget/doctor_model.dart';

final List<DoctorModel> doctors = [
  DoctorModel(
    name: "د. أحمد محمود",
    specialty: "استشاري أمراض القلب",
    experience: "12 سنة خبرة",
    image: "assets/images/doctor.jpg",
  ),
  DoctorModel(
    name: "د. رائد",
    specialty: "أخصائي باطنية",
    experience: "8 سنوات خبرة",
  ),
  DoctorModel(
    name: "د. سامر عودة",
    specialty: "أخصائي باطنية",
    experience: "5 سنوات خبرة",
  ),
  DoctorModel(
    name: "د. فاطمة علي",
    specialty: "أخصائية أطفال",
    experience: "10 سنوات خبرة",
    image: AppAssets.aDoctor,
  ),
  DoctorModel(
    name: "د. خالد محمد",
    specialty: "استشاري جراحة",
    experience: "15 سنة خبرة",
  ),
  DoctorModel(
    name: "د. منى حسن",
    specialty: "أخصائية جلدية",
    experience: "7 سنوات خبرة",
  ),
];
