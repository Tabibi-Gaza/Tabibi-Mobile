import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/custome_text_form_field.dart';

class CustomePersonalInformation extends StatelessWidget {
  const CustomePersonalInformation({
    super.key,
    required this.title,
    required this.prefixIcon,
    required this.controller,
    required this.keyboardType,
    this.hint,
    this.validator,
    this.isEditeble,
    this.onTap,
  });

  final String title;
  final String? hint;
  final IconData prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool? isEditeble;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: AppFontSize.fontSize16,
            fontWeight: FontWeight.w700,
            color: AppColors.cGrey,
          ),
        ),
        const SizedBox(height: AppSizeHeight.h10),
        CustomeTextFormField(
          hintText: hint ?? "",
          prefixIcon: prefixIcon,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: false,
          validator: validator,
          enabled: isEditeble,
          onTap: onTap,
        ),
      ],
    );
  }
}
