import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/onBording/widget/doctor_model.dart';

import '../../../core/constants/app_assets.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.doctor, this.onTap, required this.isLast});
  final DoctorModel doctor;
  final GestureTapCallback? onTap;
  final bool isLast;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),

        padding: const EdgeInsets.all(AppPadding.p12),

        decoration: BoxDecoration(
          color: AppColors.cWhite,

          borderRadius: BorderRadius.circular(AppRadius.r12),

          border: Border.all(width: 2, color:isLast? AppColors.cPrimary:AppColors.cGrey),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: AppRadius.r28,

              backgroundImage: doctor.image != null
                  ? AssetImage(AppAssets.aDoctor)
                  : null,

              child: doctor.image == null ? const Icon(Icons.person) : null,
            ),

            const SizedBox(width: AppSizeWidth.w12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    doctor.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: AppFontSize.fontSize13,
                    ),
                  ),

                  const SizedBox(height: AppSizeHeight.h5),

                  Text(
                    doctor.specialty,

                    style: TextStyle(color: AppColors.cGrey.withOpacity(0.8), fontSize:AppFontSize.fontSize13),
                  ),

                  Text(
                    doctor.experience,

                    style: TextStyle(color: AppColors.cGrey.withOpacity(0.7), fontSize: AppFontSize.fontSize13),
                  ),
                ],
              ),
            ),

            Icon(Icons.arrow_back_ios, size: 18, color:isLast? AppColors.cPrimary:AppColors.cGrey),
          ],
        ),
      ),
    );
  }
}
