import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class OnBordingController extends GetxController {
  RxInt index = 0.obs;

  late PageController pageController;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void onNext() {
    if (index.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }

  void onPrevious() {
    if (index.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void onSkip() {
    Get.offAllNamed(AppRoutes.login);
  }

  void onTap(int p0) {
    index.value = p0;
    pageController.animateToPage(
      index.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
