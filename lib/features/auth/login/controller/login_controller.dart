import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscureText = true;

  String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال البريد الإلكتروني";
    }
    if (!value.contains("@")) {
      return "الرجاء إدخال بريد إلكتروني صحيح";
    }
    return null;
  }

  String? validatorPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال كلمة المرور";
    }
    if (value.length < 8) {
      return "كلمة المرور يجب أن تكون من 8 أحرف على الأقل";
    }
    return null;
  }

  void togglePasswordVisibility() {
    obscureText = !obscureText;
    update();
  }

  void onPressedRegisterNow() {
    Get.toNamed(AppRoutes.register);
  }

  void onPressedLogin() {
    if (formKey.currentState!.validate()) {
      Get.snackbar("نجاح", "تم تسجيل الدخول");
    } else {
      Get.snackbar("خطأ", "يرجى تعبئة الحقول");
    }
  }

  void onPressedForgetPassword() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
