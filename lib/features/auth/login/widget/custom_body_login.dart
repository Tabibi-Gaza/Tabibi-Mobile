import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/custome_button_auth.dart';
import 'package:tabibi_app/core/widget/custome_text_form_field.dart';

class CustomBodyLogin extends StatelessWidget {
  const CustomBodyLogin({
    super.key,
    required this.loginTitleText,
    required this.loginSubTitleText,
    required this.loginForgetPasswordText,
    required this.loginButtonText,
    required this.loginHaveNoAccountText,
    required this.loginRegisterNowText,
    required this.loginEmailText,
    required this.loginPasswordText,
    required this.emailController,
    required this.passwordController,
    required this.onPressedForgetPassword,
    required this.onPressedRegisterNow,
    required this.onPressedLogin,
    required this.validatorEmail,
    required this.validatorPassword,
    required this.obscureText,
    required this.sufficIcon,
  });
  final String loginTitleText;
  final String loginSubTitleText;
  final String loginForgetPasswordText;
  final String loginButtonText;
  final String loginHaveNoAccountText;
  final String loginRegisterNowText;
  final String loginEmailText;
  final String loginPasswordText;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onPressedForgetPassword;
  final VoidCallback onPressedRegisterNow;
  final VoidCallback onPressedLogin;
  final FormFieldValidator<String> validatorEmail;
  final FormFieldValidator<String> validatorPassword;
  final bool obscureText;
  final Widget sufficIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          loginTitleText,
          style: TextStyle(
            color: AppColors.cBlack,
            fontSize: AppFontSize.fontSize30,
            fontWeight: FontWeight.bold,
          ),
        ).animate().fadeIn().slideX(begin: -0.2),
        SizedBox(height: AppSizeHeight.h4),
        Text(
          loginSubTitleText,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.cGrey, fontSize: 16),
        ).animate().fadeIn(delay: 200.ms),
        SizedBox(height: AppSizeHeight.h20),
        CustomeTextFormField(
          validator: validatorEmail,
          hintText: loginEmailText,
          prefixIcon: Icons.email,
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
        ).animate().fadeIn(delay: 300.ms).slideX(begin: 0.2),
        SizedBox(height: AppSizeHeight.h20),
        CustomeTextFormField(
          validator: validatorPassword,
          hintText: loginPasswordText,
          prefixIcon: Icons.lock,
          controller: passwordController,
          keyboardType: TextInputType.text,
          sufficIcon: sufficIcon,
          obscureText: obscureText,
        ).animate().fadeIn(delay: 400.ms).slideX(begin: 0.2),
        SizedBox(height: AppSizeHeight.h8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: onPressedForgetPassword,
              child: Text(
                loginForgetPasswordText,
                style: TextStyle(color: AppColors.cPrimary, fontSize: 15),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizeHeight.h20),
        CustomeButtonAuth(
          text: loginButtonText,
          onPressed: onPressedLogin,
        ).animate().fadeIn(delay: 600.ms).scale(begin: Offset(0.8, 0.8)),
        SizedBox(height: AppSizeHeight.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              loginHaveNoAccountText,
              style: TextStyle(
                color: AppColors.cBlack,
                fontSize: AppFontSize.fontSize16,
              ),
            ),
            TextButton(
              onPressed: onPressedRegisterNow,
              child: Text(
                loginRegisterNowText,
                style: TextStyle(
                  color: AppColors.cPrimary,
                  fontSize: AppFontSize.fontSize16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
