import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/Temporary%20lists/specialties_list.dart' ;
import 'package:tabibi_app/core/models/specialty_model.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class HomeController extends GetxController {
  bool isTappedOnSearhTextField = false;
  List<SpecialtyModel> specialties = Specialties.specialties;
  void changeSelected(int index) {
    update();
  }

  void onTapOnSearchTextField() {
    isTappedOnSearhTextField = true;
    Get.toNamed(AppRoutes.searchScreen);
    update();
  }

  void onTapOutsideSearchTextField() {
    isTappedOnSearhTextField = false;
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    update();
  }
  void onTapOnSelectSpecialtyScreen() {
    Get.toNamed(AppRoutes.selectSpecialtyScreen);
  }
  void onTapOnAppointmentDetailsScreen() {
    Get.toNamed(AppRoutes.appointmentDetailsScreen);
  }


   
  
}
