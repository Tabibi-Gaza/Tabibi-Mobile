import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

import '../../../core/constants/app_colors.dart';

class CustomBuildInstructionsCard extends StatelessWidget {
  const CustomBuildInstructionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.info_outline, size: 18, color: AppColors.cPrimary),
              const SizedBox(width: AppSizeWidth.w6),
              const Text(
                'تعليمات ما قبل الزيارة',
                style: TextStyle(
                  fontSize: AppFontSize.fontSize14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.cBlack,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizeHeight.h8),
          Text(
            'يرجى الحضور قبل 10 دقائق من الموعد وإحضار التقارير الطبية السابقة إن وجدت. في حال الرغبة بالإلغاء، يرجى ذلك قبل 24 ساعة على الأقل.',
            style: TextStyle(
              fontSize: 12.5,
              height: 1.6,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
