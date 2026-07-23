import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CoustomBuildDoctorResult extends StatelessWidget {
  const CoustomBuildDoctorResult({
    super.key,
    required this.onTap,
    required this.name,
    required this.specialty,
  });
  final GestureTapCallback? onTap;
  final String name;
  final String specialty;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppPadding.p16 ),
        decoration: BoxDecoration(
          color: AppColors.cWhite,
          borderRadius: BorderRadius.circular(AppRadius.r20),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              foregroundColor: AppColors.cSecondary.withOpacity(0.15),
              backgroundImage: const AssetImage('assets/images/doctor.jpg'),
              child: Text(
                '',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.cSecondary,
                ),
              ),
            ),
            const SizedBox(width: AppPadding.p16 ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: AppFontSize.fontSize16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.cBlack,
                    ),
                  ),
                  const SizedBox(height: AppSizeHeight.h2),
                  Text(
                    specialty,
                    style: const TextStyle(
                      fontSize: AppFontSize.fontSize16 ,
                      color: AppColors.cGrey,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_left, color: AppColors.cGrey),
          ],
        ),
      ),
    );
  }
}