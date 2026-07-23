import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/Temporary%20lists/doctors_list.dart';

class SearchScreenController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  List<String> recentSearches = <String>[];
  List<dynamic> list = <dynamic>[];
  void addSearch(String value) {
    if (value.trim().isNotEmpty) {
      recentSearches.add(value);
      update();
    }
  }

  void onChanged(String value) {
    if (value.trim().isEmpty) {
      list.clear();
    } else {
      var filteredList = DoctorsList.doctors
          .where(
            (element) =>
                element.name.toLowerCase().contains(value.toLowerCase()),
          )
          .toList();
      list.clear();
      list.addAll(filteredList);
    }
    update();
  }
  void onPressedBack() {
    Get.back();
  }
}
