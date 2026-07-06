import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال البريد الإلكتروني";
    }
    if (!value.contains("@")) {
      return "الرجاء إدخال بريد إلكتروني صحيح";
    }
    return null;
  }

  void onPressedSendEmail() {
    if (formKey.currentState!.validate()) {
      Get.snackbar("نجاح", "تم إرسال البريد الإلكتروني");
    } else {
      Get.snackbar("خطأ", "يرجى تعبئة الحقول");
    }
  }

  void onPressedBackToLogin() {
    Get.back();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
