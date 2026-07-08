import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController(
    text: "ساره احمد",
  );
  final TextEditingController emailController = TextEditingController(
    text: "EMAIL@ADDRESS",
  );
  final TextEditingController phoneController = TextEditingController(
    text: "592123123",
  );
  final TextEditingController dateOfBirthController = TextEditingController(
    text: "1990-01-01",
  );
  final TextEditingController addressController = TextEditingController(
    text: "غزة",
  );
  String? gender;
  DateTime? selectedDate;

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

  String? validatorDateOfBirth(String? value) {
    if (value == null || value.isEmpty) {
      return "الرجاء إدخال تاريخ الميلاد";
    }
    return null;
  }

  void onChangedGender(String? value) {
    gender = value;
    update();
  }

  void selectBirthDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      selectedDate = pickedDate;

      dateOfBirthController.text =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    }
  }

  void backTo() {
    Get.back();
  }

  void save() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Get.snackbar(
        "تم",
        "تم حفظ التعديلات بنجاح",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
    update();
  }

  @override
  void onClose() {
    phoneController.dispose();
    emailController.dispose();
    fullNameController.dispose();
    dateOfBirthController.dispose();
    addressController.dispose();
    super.onClose();
  }
}
