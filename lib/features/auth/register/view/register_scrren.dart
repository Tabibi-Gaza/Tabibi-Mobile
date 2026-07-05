import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/auth/register/controller/register_controller.dart';
import 'package:tabibi_app/features/auth/register/widget/custom_body_register.dart';
import 'package:tabibi_app/features/auth/register/widget/custom_heder_register.dart';

class RegisterScrren extends StatelessWidget {
  RegisterScrren({super.key});

  final RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.cSecondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomHederRegister(),
            const SizedBox(height: AppSizeHeight.h10),

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: AppPadding.p30,
                right: AppPadding.p20,
                left: AppPadding.p20,
                bottom: AppPadding.p20,
              ),
              decoration: BoxDecoration(
                color: AppColors.cWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.r40),
                  topRight: Radius.circular(AppRadius.r40),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -10),
                    color: AppColors.cWhite.withValues(alpha: .2),
                    spreadRadius: 10,
                    blurStyle: BlurStyle.solid,
                  ),
                ],
              ),

              child: Form(
                key: _registerController.formKeyRegister,
                child: GetBuilder<RegisterController>(
                  builder: (registerController) {
                    return CustomBodyRegister(
                      fullNameController: registerController.fullNameController,
                      emailController: registerController.emailController,
                      phoneController: registerController.phoneController,
                      addressController: registerController.addressController,
                      passwordController: registerController.passwordController,
                      confirmPasswordController:
                          registerController.confirmPasswordController,

                      validatorFullName: registerController.validatorFullName,
                      validatorEmail: registerController.validatorEmail,
                      validatorPhone: registerController.validatorPhone,
                      validatorGender: registerController.validatorGender,
                      validatorAddress: registerController.validatorAddress,
                      validatorPassword: registerController.validatorPassword,

                      onChangedGender: registerController.onChangedGender,
                      onChangedCheckbox: registerController.onChangedCheckbox,

                      isObscureTextPassword:
                          registerController.isObscureTextPassword,
                      isChecked: registerController.isChecked,

                      sufficIcon: IconButton(
                        onPressed:
                            registerController.onChangedPasswordObscureText,
                        icon: Icon(
                          registerController.isObscureTextPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),

                      onPressedRegisterButton:
                          registerController.onPressedRegisterButton,
                      onPressedTextButton:
                          registerController.onPressedTextButton,
                      ischeckboxError: registerController.ischeckboxError,
                      checkboxError: registerController.checkboxError,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
