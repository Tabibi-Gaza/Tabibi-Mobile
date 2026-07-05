import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/features/auth/login/controller/login_controller.dart';
import 'package:tabibi_app/features/auth/login/widget/custom_body_login.dart';
import 'package:tabibi_app/features/auth/login/widget/custome_heder_login.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.cSecondary,
      body: Column(
        children: [
          Expanded(flex: 2, child: CustomeHederLogin()),
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
                  key: _loginController.formKey,
                  child: GetBuilder<LoginController>(
                    init: _loginController,
                    builder: (loginController) {
                      return CustomBodyLogin(
                        loginTitleText: AppString.loginTitle,
                        loginSubTitleText: AppString.loginSubTitle,
                        loginForgetPasswordText: AppString.loginForgetPassword,
                        loginButtonText: AppString.loginButton,
                        loginHaveNoAccountText: AppString.loginHaveNoAccount,
                        loginRegisterNowText: AppString.loginRegisterNow,
                        loginEmailText: AppString.authEmail,
                        loginPasswordText: AppString.authPassword,
                        emailController: loginController.emailController,
                        passwordController: loginController.passwordController,
                        onPressedForgetPassword: () {},
                        onPressedRegisterNow: () {
                          _loginController.onPressedRegisterNow();
                        },
                        onPressedLogin: () {
                          _loginController.onPressedLogin();
                        },
                        validatorEmail: (value) {
                          return _loginController.validatorEmail(value);
                        },
                        validatorPassword: (value) {
                          return _loginController.validatorPassword(value);
                        },
                        obscureText: _loginController.obscureText,
                        sufficIcon: IconButton(
                          onPressed: () {
                            loginController.togglePasswordVisibility();
                          },
                          icon: Icon(
                            loginController.obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
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
