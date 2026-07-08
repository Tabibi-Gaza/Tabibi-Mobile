import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/core/widget/custome_button_auth.dart';
import 'package:tabibi_app/core/widget/custome_text_form_field.dart';

class CusotomBodyForgotPassword extends StatelessWidget {
  const CusotomBodyForgotPassword({
    super.key,
    required this.validatorEmail,
    required this.controller,
    required this.onPressedSendEmail,
    required this.onPressedBackToLogin,
  });
  final FormFieldValidator<String> validatorEmail;
  final TextEditingController controller;
  final VoidCallback onPressedSendEmail;
  final VoidCallback onPressedBackToLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          AppString.forgotPasswordTitle,
          style: TextStyle(
            fontSize: AppFontSize.fontSize25,
            fontWeight: FontWeight.bold,
            color: AppColors.cBlack,
          ),
        ),
         SizedBox(height: AppSizeHeight.h10),
        Text(
          AppString.forgotPasswordSubTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppFontSize.fontSize16,
            color: AppColors.cGrey,
          ),
        ),
         SizedBox(height: AppSizeHeight.h20),
        CustomeTextFormField(
          hintText: AppString.authEmail,
          prefixIcon: Icons.email_outlined,
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          validator: validatorEmail,
        ),
         SizedBox(height: AppSizeHeight.h20),
        CustomeButtonAuth(
          text: AppString.forgotPasswordButton,
          onPressed: onPressedSendEmail,
        ),
         SizedBox(height: AppSizeHeight.h20),
        TextButton(
          onPressed: onPressedBackToLogin,
          child: Text(
            AppString.forgotPasswordBackToLogin,
            style: TextStyle(
              fontSize: AppFontSize.fontSize16,
              color: AppColors.cPrimary,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.cPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
