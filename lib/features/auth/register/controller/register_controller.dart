import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKeyRegister = GlobalKey<FormState>();
  late TextEditingController fullNameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController addressController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  bool isChecked = false;
  bool isObscureTextPassword = true;
  String? gender;
  bool ischeckboxError = false;
  String? checkboxError;

  @override
  void onInit() {
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

  String? validatorFullName(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال الاسم";
    }
    return null;
  }

  String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال البريد الإلكتروني";
    }
    if (!value.contains("@")) {
      return "الرجاء إدخال بريد إلكتروني صحيح";
    }
    return null;
  }

  String? validatorPhone(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال رقم الهاتف";
    }
    if (value.length < 8) {
      return "رقم الهاتف يجب أن يكون من 8 أرقام على الأقل";
    }
    return null;
  }

  String? validatorGender(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال الجنس";
    }
    return null;
  }

  String? validatorAddress(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال العنوان";
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

  void onChangedGender(String? value) {
    gender = value;
    update();
  }

  void onChangedCheckbox(bool? value) {
    isChecked = value!;
    update();
  }

  void onChangedPasswordObscureText() {
    isObscureTextPassword = !isObscureTextPassword;
    update();
  }

  void onPressedRegisterButton() {
    checkboxError = null;
    if (ischeckboxError) {
      checkboxError = "يجب الموافقة على الشروط";
      update();
      return;
    }

    if (formKeyRegister.currentState!.validate()) {
      Get.snackbar("نجاح", "تم تسجيل الدخول");
    }
  }

  void onPressedTextButton() {
    Get.offAllNamed("/login");
  }

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
