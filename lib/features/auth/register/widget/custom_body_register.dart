import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/core/widget/custome_button_auth.dart';
import 'package:tabibi_app/core/widget/custome_text_form_field.dart';

class CustomBodyRegister extends StatelessWidget {
  const CustomBodyRegister({
    super.key,
    required this.fullNameController,
    required this.emailController,
    required this.phoneController,
    required this.addressController,
    required this.passwordController,
    required this.validatorFullName,
    required this.validatorEmail,
    required this.validatorPhone,
    required this.validatorGender,
    required this.validatorAddress,
    required this.validatorPassword,
    required this.onChangedGender,
    required this.onChangedCheckbox,
    required this.isObscureTextPassword,
    required this.isChecked,
    required this.sufficIcon,
    required this.onPressedRegisterButton,
    required this.onPressedTextButton,
    this.ischeckboxError,
    this.checkboxError,
  });

  final TextEditingController fullNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final TextEditingController passwordController;
  final FormFieldValidator<String> validatorFullName;
  final FormFieldValidator<String> validatorEmail;
  final FormFieldValidator<String> validatorPhone;
  final FormFieldValidator<String> validatorGender;
  final FormFieldValidator<String> validatorAddress;
  final FormFieldValidator<String> validatorPassword;
  final ValueChanged<String?> onChangedGender;
  final ValueChanged<bool?> onChangedCheckbox;
  final bool isObscureTextPassword;
  final bool isChecked;
  final Widget sufficIcon;
  final VoidCallback onPressedRegisterButton;
  final VoidCallback onPressedTextButton;
  final bool? ischeckboxError;
  final String? checkboxError;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomeTextFormField(
          hintText: AppString.authFullName,
          prefixIcon: Icons.person,
          controller: fullNameController,
          keyboardType: TextInputType.text,
          obscureText: false,
          validator: validatorFullName,
        ),
         SizedBox(height: AppSizeHeight.h8),
        CustomeTextFormField(
          hintText: AppString.authEmail,
          prefixIcon: Icons.email,
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          validator: validatorEmail,
        ),
         SizedBox(height: AppSizeHeight.h8),
        CustomeTextFormField(
          hintText: AppString.authPhoneNumber,
          prefixIcon: Icons.call,
          controller: phoneController,
          keyboardType: TextInputType.phone,
          obscureText: false,
          validator: validatorPhone,
        ),
         SizedBox(height: AppSizeHeight.h8),
        DropdownButtonFormField<String>(
          isExpanded: false,
          validator: validatorGender,
          decoration: InputDecoration(
            contentPadding:  EdgeInsets.symmetric(
              horizontal: AppPadding.p16,
              vertical: AppPadding.p16,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.cGrey, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.cPrimary, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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
          onChanged: onChangedGender,
        ),
         SizedBox(height: AppSizeHeight.h8),
        CustomeTextFormField(
          hintText: AppString.authAddress,
          prefixIcon: Icons.location_on,
          controller: addressController,
          keyboardType: TextInputType.streetAddress,
          obscureText: false,
          validator: validatorAddress,
        ),
         SizedBox(height: AppSizeHeight.h8),
        CustomeTextFormField(
          hintText: AppString.authPassword,
          prefixIcon: Icons.lock,
          controller: passwordController,
          keyboardType: TextInputType.text,
          sufficIcon: sufficIcon,
          obscureText: isObscureTextPassword,
          validator: validatorPassword,
        ),
         SizedBox(height: AppSizeHeight.h8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              activeColor: AppColors.cPrimary,
              value: isChecked,
              onChanged: onChangedCheckbox,
            ),
            Text(
              AppString.registerTermsAndConditions,
              style: TextStyle(
                color: AppColors.cGrey,
                fontSize: AppFontSize.fontSize16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        if (ischeckboxError != null)
          Text(
            checkboxError ?? '',
            style: TextStyle(color: Colors.red, fontSize: 12),
          ),

         SizedBox(height: AppSizeHeight.h10),
        CustomeButtonAuth(
          text: AppString.registerButton,
          onPressed: onPressedRegisterButton,
        ),
         SizedBox(height: AppSizeHeight.h10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.registerHaveAccount,
              style: TextStyle(
                color: AppColors.cGrey,
                fontSize: AppFontSize.fontSize16,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
              onPressed: onPressedTextButton,
              child: Text(
                AppString.loginButton,
                style: TextStyle(
                  color: AppColors.cPrimary,
                  fontSize: AppFontSize.fontSize16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
