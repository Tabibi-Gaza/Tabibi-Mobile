import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/models/gender.dart';
import 'package:tabibi_app/core/models/user.dart';

class PatientsList {
static List<User> patients = [
  User(
    id: "1",
    name: "محمد أحمد",
    email: "mohammad@gmail.com",
    phone: "0599123456",
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu5v0tocLtdcVrsfwZkfPHoDkLThWWgVyduWNkMV_dwg&s',
    gender: Gender.male,
    password: "123456",
    birthDate: DateTime.now(),
    address: 'القاهرة',
  ),
  User(
    id: "2",
    name: "أحمد خالد",
    email: "ahmed@gmail.com",
    phone: "0599234567",
    image: AppAssets.aPerson,
    gender: Gender.male,
    password: "123456",
    address: 'القاهرة',
    birthDate: DateTime.now(),
  ),
 
];



}

