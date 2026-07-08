import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class CustomeBuildTabButton extends StatelessWidget {
  const CustomeBuildTabButton({super.key, required this.label, required this.isSelected, required this.onTap,});
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: onTap,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.cSecondary : Colors.transparent,
        borderRadius: BorderRadius.circular(AppRadius.r30),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ]
            : [],
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: AppFontSize.fontSize16 ,
          fontWeight: FontWeight.w700,
          color: isSelected ? AppColors.cWhite : AppColors.cGrey,
        ),
      ),
    ),
  );
  }
}