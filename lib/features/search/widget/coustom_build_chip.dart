import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CoustomBuildChip extends StatelessWidget {
  const CoustomBuildChip({super.key,required this.label, required this.icon});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14, vertical: AppPadding.p10),
      decoration: BoxDecoration(
        color: AppColors.cWhite,
        borderRadius: BorderRadius.circular(AppRadius.r30),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.cGrey),
          const SizedBox(width: AppSizeWidth.w6),
          Text(
            label,
            style: const TextStyle(
              fontSize: AppFontSize.fontSize16 * 0.85,
              fontWeight: FontWeight.w600,
              color: AppColors.cBlack,
            ),
          ),
        ],
      ),
    );
  }
}