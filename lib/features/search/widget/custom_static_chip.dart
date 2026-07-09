import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class CustomStaticChip extends StatelessWidget {
  const CustomStaticChip({super.key, required this.label, required this.onTap});
  final String label;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p10,
        ),
        decoration: BoxDecoration(
          color: AppColors.cWhite,
          borderRadius: BorderRadius.circular(AppRadius.r30),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: AppFontSize.fontSize16,
            fontWeight: FontWeight.w600,
            color: AppColors.cBlack,
          ),
        ),
      ),
    );
  }
}
