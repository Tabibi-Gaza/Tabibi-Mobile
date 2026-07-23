import 'package:flutter/material.dart';
import 'package:tabibi_app/core/models/department_model.dart';

class Departments {
  static List<DepartmentModel> departments = [
    DepartmentModel(
      name: 'أطفال',
      icon: Icons.child_care,
      doctorsCount: 4,
    ),
    DepartmentModel(
      name: 'باطنية',
      icon: Icons.medical_services,
      doctorsCount: 6,
    ),
    DepartmentModel(
      name: 'أسنان',
      icon: Icons.clean_hands,
      doctorsCount: 5,
    ),
    DepartmentModel(
      name: 'جلدية',
      icon: Icons.face,
      doctorsCount: 3,
    ),
    DepartmentModel(
      name: 'قلب',
      icon: Icons.favorite,
      doctorsCount: 3,
    ),
    DepartmentModel(
      name: 'عظام',
      icon: Icons.accessibility,
      doctorsCount: 2,
    ),
    DepartmentModel(
      name: 'نساء وتوليد',
      icon: Icons.pregnant_woman,
      doctorsCount: 4,
    ),
    DepartmentModel(
      name: 'عيون',
      icon: Icons.visibility,
      doctorsCount: 2,
    ),
    DepartmentModel(
      name: 'نفسية',
      icon: Icons.psychology,
      doctorsCount: 2,
    ),
    DepartmentModel(
      name: 'أنف وأذن وحنجرة',
      icon: Icons.hearing,
      doctorsCount: 2,
    ),
  ];
}
