import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/core/widget/custome_button_auth.dart';
import 'package:tabibi_app/features/PersonalInformation/controller/personal_information_controller.dart';
import 'package:tabibi_app/features/PersonalInformation/widget/custome_personal_information.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

  PersonalInformationController get controller =>
      Get.put(PersonalInformationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      appBar: AppBar(
        backgroundColor: AppColors.cWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "معلومات الشخصية",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppFontSize.fontSize20,
            fontWeight: FontWeight.w700,
            color: AppColors.cPrimary,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.cPrimary),
          onPressed: () {
            controller.backTo();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: Icon(Icons.edit_note, color: AppColors.cPrimary),
          ),
        ],
      ),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p30,
            vertical: AppPadding.p10,
          ),
          child: SingleChildScrollView(
            child: GetBuilder<PersonalInformationController>(
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: AppRadius.r40,
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/300",
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: AppRadius.r15,
                              backgroundColor: AppColors.cPrimary,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: AppFontSize.fontSize15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizeHeight.h20),
                    CustomePersonalInformation(
                      title: "الاسم كامل",
                      prefixIcon: Icons.person,
                      controller: controller.fullNameController,
                      keyboardType: TextInputType.text,
                      validator: controller.validatorFullName,
                    ),
                    const SizedBox(height: AppSizeHeight.h10),
                    CustomePersonalInformation(
                      title: "البريد الالكتروني",
                      prefixIcon: Icons.email,
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: controller.validatorEmail,
                      isEditeble: false,
                    ),
                    const SizedBox(height: AppSizeHeight.h10),
                    CustomePersonalInformation(
                      title: "رقم الهاتف",
                      prefixIcon: Icons.phone,
                      controller: controller.phoneController,
                      keyboardType: TextInputType.phone,
                      validator: controller.validatorPhone,
                    ),
                    const SizedBox(height: AppSizeHeight.h10),
                    CustomePersonalInformation(
                      title: "تاريخ الميلاد",
                      prefixIcon: Icons.calendar_today,
                      controller: controller.dateOfBirthController,
                      keyboardType: TextInputType.datetime,
                      validator: controller.validatorDateOfBirth,
                      onTap: () {
                        controller.selectBirthDate();
                      },
                    ),
                    const SizedBox(height: 10),
                    Text(
                      AppString.authGender,
                      style: TextStyle(
                        fontSize: AppFontSize.fontSize16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.cGrey,
                      ),
                    ),
                    const SizedBox(height: AppSizeHeight.h10),
                    DropdownButtonFormField<String>(
                      isExpanded: false,
                      validator: controller.validatorGender,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: AppPadding.p16,
                          vertical: AppPadding.p16,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.cGrey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.cPrimary,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(AppRadius.r10),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppRadius.r10),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: AppColors.cGrey,
                        ),
                      ),
                      hint: Text(
                        AppString.authGender,
                        style: TextStyle(
                          color: AppColors.cGrey,
                          fontSize: AppFontSize.fontSize16,
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: AppString.registerMale,
                          child: Text(AppString.registerMale),
                        ),
                        DropdownMenuItem(
                          value: AppString.registerFemale,
                          child: Text(AppString.registerFemale),
                        ),
                      ],
                      onChanged: controller.onChangedGender,
                    ),
                    const SizedBox(height: AppSizeHeight.h10),
                    CustomePersonalInformation(
                      title: "العنوان",
                      prefixIcon: Icons.location_on,
                      controller: TextEditingController(text: "123456789"),
                      keyboardType: TextInputType.text,
                      validator: controller.validatorAddress,
                    ),

                    const SizedBox(height: AppSizeHeight.h10),
                    CustomeButtonAuth(
                      text: "حفظ",
                      onPressed: () {
                        controller.save();
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
