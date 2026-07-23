import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKeyRegister = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();

  bool isChecked = false;
  bool isObscureTextPassword = true;
  String? gender;
  bool ischeckboxError = false;
  String? checkboxError;

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

  String? validatorBirthDate(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال تاريخ الميلاد";
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
      Get.offNamed(AppRoutes.login);
    }
  }

  void onPressedTextButton() {
    Get.back();
  }

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    passwordController.dispose();
    birthDateController.dispose();
    super.onClose();
  }
}
