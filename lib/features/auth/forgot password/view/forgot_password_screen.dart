import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/features/auth/forgot%20password/controller/forgot_password_controller.dart';
import 'package:tabibi_app/features/auth/forgot%20password/widget/cusotom_body_forgot_password.dart';
import 'package:tabibi_app/features/auth/forgot%20password/widget/cusotom_heder_forgot_password.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.cSecondary,
      body: Column(
        children: [
          Expanded(flex: 2, child: CustomHederForgotPassword()),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: AppPadding.p35,
                right: AppPadding.p20,
                left: AppPadding.p20,
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
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: GetBuilder<ForgotPasswordController>(
                    init: controller,
                    builder: (controller) {
                      return CusotomBodyForgotPassword(
                        validatorEmail: controller.validatorEmail,
                        controller: controller.emailController,
                        onPressedSendEmail: controller.onPressedSendEmail,
                        onPressedBackToLogin: controller.onPressedBackToLogin,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
