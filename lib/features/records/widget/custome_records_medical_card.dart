import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CustomeRecordsMedicalCard extends StatelessWidget {
  final String title;

  final IconData icon;

  final List<String> tags;

  final Color tagColor;

  const CustomeRecordsMedicalCard({
    super.key,

    required this.title,

    required this.icon,

    required this.tags,

    required this.tagColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(AppPadding.p16),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(AppRadius.r15),

        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 10),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Icon(icon, color: AppColors.cTertiary, size: 22),
              const SizedBox(width: AppSizeWidth.w8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: AppFontSize.fontSize16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizeHeight.h16),
          Wrap(
            alignment: WrapAlignment.start,

            spacing: 8,
            children: [
              for (var tag in tags)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p12,
                    vertical: AppPadding.p6,
                  ),
                  decoration: BoxDecoration(
                    color: tagColor,
                    borderRadius: BorderRadius.circular(AppRadius.r20),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(
                      fontSize: AppFontSize.fontSize15,
                      color: AppColors.cTertiary,
                    ),
                  ),
                ),
            ]
               
            
          ),
        ],
      ),
    );
  }
}
