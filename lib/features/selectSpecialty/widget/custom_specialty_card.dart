import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/models/specialty_model.dart';

class SpecialtyCard extends StatelessWidget {
  final SpecialtyModel specialty;
  final VoidCallback? onTap;
  final bool isSelected;

  const SpecialtyCard({
    super.key,
    required this.specialty,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppRadius.r12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p16,
          horizontal: AppPadding.p12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.r12),
          border: Border.all(
            width: 2,
            color: isSelected ? AppColors.cPrimary : AppColors.cGrey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppPadding.p8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.cPrimary.withValues(alpha: 0.4),
                ),
              ),
              child: Icon(specialty.icon, color: AppColors.cPrimary, size: 25),
            ),
            const SizedBox(width: AppSizeWidth.w10),

            Text(
              specialty.name,
              style: TextStyle(
                fontSize: AppFontSize.fontSize16,
                fontWeight: FontWeight.w500,
                color: AppColors.cBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
