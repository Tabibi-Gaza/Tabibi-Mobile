import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/models/department_model.dart';

class CustomDepartmentCard extends StatelessWidget {
  const CustomDepartmentCard({
    super.key,
    required this.department,
    required this.onTap,
  });

  final DepartmentModel department;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.r16),
          boxShadow: [
            BoxShadow(
              color: AppColors.cBlack.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: AppSizeWidth.w48,
              height: AppSizeHeight.h48,
              decoration: BoxDecoration(
                color: AppColors.cPrimary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppRadius.r12),
              ),
              child: Icon(
                department.icon,
                size: AppSizeWidth.w24,
                color: AppColors.cPrimary,
              ),
            ),
            const SizedBox(height: AppSizeHeight.h12),
            Text(
              department.name,
              style: TextStyle(
                fontSize: AppFontSize.fontSize14,
                fontWeight: FontWeight.w600,
                color: AppColors.cBlack,
              ),
            ),
            const SizedBox(height: AppSizeHeight.h4),
            Text(
              '${department.doctorsCount} أطباء',
              style: TextStyle(
                fontSize: AppFontSize.fontSize12,
                color: AppColors.cGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
