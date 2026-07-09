import 'package:flutter/material.dart';
import 'package:tabibi_app/core/models/specialty_model.dart';

final List<SpecialtyModel> specialties = [
  SpecialtyModel(name: 'أطفال', icon: Icons.child_care_rounded, selected: false),
  SpecialtyModel(name: 'باطنية', icon: Icons.medical_information_rounded, selected: false),
  SpecialtyModel(name: 'أسنان', icon: Icons.medication_liquid_rounded, selected: false),
  SpecialtyModel(name: 'جلدية', icon: Icons.face_retouching_natural_rounded, selected: false),
  SpecialtyModel(name: 'عظام', icon: Icons.accessibility_rounded, selected: false),
  SpecialtyModel(name: 'عيون', icon: Icons.visibility_rounded, selected: false),
  SpecialtyModel(name: 'أنف وأذن', icon: Icons.hearing_rounded, selected: false),
  SpecialtyModel(name: 'قلب', icon: Icons.favorite_rounded, selected: false),
];
