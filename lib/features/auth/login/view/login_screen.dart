import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/features/auth/login/controller/login_controller.dart';
import 'package:tabibi_app/features/auth/login/widget/custom_body_login.dart';
import 'package:tabibi_app/features/auth/login/widget/custome_heder_login.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.cQuaternary,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: CustomeHederLogin()
                .animate()
                .fadeIn(duration: 700.ms)
                .slideY(begin: -0.4, end: 0, curve: Curves.easeOut),
          ),
          Expanded(
            flex: 5,
            child:
                Container(
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
                          child: GetBuilder<LoginController>(
                            init: controller,
                            builder: (controller) {
                              return CustomBodyLogin(
                                loginTitleText: AppString.loginTitle,
                                loginSubTitleText: AppString.loginSubTitle,
                                loginForgetPasswordText:
                                    AppString.loginForgetPassword,
                                loginButtonText: AppString.loginButton,
                                loginHaveNoAccountText:
                                    AppString.loginHaveNoAccount,
                                loginRegisterNowText:
                                    AppString.loginRegisterNow,
                                loginEmailText: AppString.authEmail,
                                loginPasswordText: AppString.authPassword,
                                emailController: controller.emailController,
                                passwordController:
                                    controller.passwordController,
                                onPressedForgetPassword: () {
                                  controller.onPressedForgetPassword();
                                },
                                onPressedRegisterNow: () {
                                  controller.onPressedRegisterNow();
                                },
                                onPressedLogin: () {
                                  controller.onPressedLogin();
                                },
                                validatorEmail: (value) {
                                  return controller.validatorEmail(value);
                                },
                                validatorPassword: (value) {
                                  return controller.validatorPassword(value);
                                },
                                obscureText: controller.obscureText,
                                sufficIcon: IconButton(
                                  onPressed: () {
                                    controller.togglePasswordVisibility();
                                  },
                                  icon: Icon(
                                    controller.obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                    .animate()
                    .slideY(
                      begin: 1,
                      end: 0,
                      duration: 700.ms,
                      curve: Curves.easeOut,
                    )
                    .fadeIn(),
          ),
        ],
      ),
    );
  }
}
