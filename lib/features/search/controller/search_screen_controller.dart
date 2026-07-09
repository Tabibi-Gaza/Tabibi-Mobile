import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  List<String> recentSearches = <String>[];
  List<String> listSearchDeptClipModel = ["باطنية", "أطفال", "جلدية", "قلب"];

  void addSearch(String value) {
    if (value.trim().isNotEmpty) {
      recentSearches.add(value);
      update();
    }
  }
}
