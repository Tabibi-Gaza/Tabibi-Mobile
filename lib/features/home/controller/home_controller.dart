import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/Temporary%20lists/specialties_list.dart' as specialties_data;
import 'package:tabibi_app/core/models/specialty_model.dart';

class HomeController extends GetxController {
  bool isTappedOnSearhTextField = false;
  List<SpecialtyModel> specialties = specialties_data.specialties;
  void changeSelected(int index) {
    update();
  }

  void onTapOnSearchTextField() {
    isTappedOnSearhTextField = true;
    // Get.toNamed();
    update();
  }

  void onTapOutsideSearchTextField() {
    isTappedOnSearhTextField = false;
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    update();
  }

  void onSearchTextFieldChange(String value) {
    List<SpecialtyModel> list = specialties_data.specialties
        .where(
          (element) => element.name.toLowerCase().contains(value.toLowerCase()),
        )
        .toList();
    specialties.clear();
    specialties.addAll(list);

    if (isTappedOnSearhTextField == false) {
      value = "";
    }

    update();
  }
}
