import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/models/specialty_model.dart';
import 'package:tabibi_app/core/Temporary lists/doctors_list.dart' as doctors_data;
import 'package:tabibi_app/core/Temporary lists/specialties_list.dart' as specialties_data;
import 'package:tabibi_app/core/routes/app_routes.dart';
import 'package:tabibi_app/features/onBording/widget/doctor_model.dart';

class SelectSpecialtyController extends GetxController {
  final PageController pageController = PageController();

  int indexSelectedSpecialty = 0;

  int? selectedSpecialtyIndex;
  int? selectedDoctorIndex;
  int? selectedDayIndex;
  int? selectedTimeIndex;
  bool get isSpecialtySelected => selectedSpecialtyIndex != null;
  bool get isDoctorSelected => selectedDoctorIndex != null;
  bool get isDaySelected => selectedDayIndex != null;
  bool get isTimeSelected => selectedTimeIndex != null;
  bool get isDateTimeSelected => isDaySelected && isTimeSelected;

  Color colorButton = AppColors.cPrimary.withValues(alpha: 0.4);

  List<Map<String, String>> availableDays = [
    {'day': 'أحد', 'date': '12'},
    {'day': 'اثنين', 'date': '13'},
    {'day': 'ثلاثاء', 'date': '14'},
    {'day': 'أربعاء', 'date': '15'},
    {'day': 'خميس', 'date': '16'},
  ];

  List<String> availableTimes = [
    '09:00', '09:30', '10:00', '10:30', '11:00', '11:30'
  ];

  List<SpecialtyModel> get specialties => specialties_data.specialties;
  List<DoctorModel> get doctors => doctors_data.doctors;

  void changeSelectedSpecialty(int index ) {
    selectedSpecialtyIndex = index;
    colorButton = AppColors.cPrimary;
    update();
  }
  void changeSelectedDoctor(int index) {
    selectedDoctorIndex = index;
    colorButton = AppColors.cPrimary;
    update();
  }

  void changeSelectedDay(int index) {
    selectedDayIndex = index;
    update();
  }

  void changeSelectedTime(int index) {
    selectedTimeIndex = index;
    update();
  }

  void nextPage() {
    if (indexSelectedSpecialty < 2) {
      indexSelectedSpecialty++;

      pageController.animateToPage(
        indexSelectedSpecialty,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );

      update();
    }
  }

  void previousPage() {
    if (indexSelectedSpecialty > 0) {
      indexSelectedSpecialty--;

      pageController.animateToPage(
        indexSelectedSpecialty,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );

      update();
    }
  }

  void changeStep(int index) {
    indexSelectedSpecialty = index;

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );

    update();
  }

  void onTapBookingConfirmation() async {
    Get.snackbar(
      "تم",
      "تم تاكيد الحجز",
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
    await Future.delayed(const Duration(seconds: 2));
    Get.back();
  }
  void toBackButton (){
    Get.back();
  }



  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
