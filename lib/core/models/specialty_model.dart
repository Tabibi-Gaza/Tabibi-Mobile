import 'package:flutter/material.dart';

class SpecialtyModel {
   String name;
   List<dynamic>? doctors = <dynamic>[];
  final bool? selected;
  final IconData? icon;

  SpecialtyModel({required this.name, this.selected, this.icon});
}
