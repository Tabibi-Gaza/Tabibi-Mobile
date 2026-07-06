import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CustomeHomeReminderBanner extends StatelessWidget {
  const CustomeHomeReminderBanner({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(
        color: const Color(0xFFFDEBEB),
        borderRadius: BorderRadius.circular(AppRadius.r20),
        border: Border.all(color: const Color(0xFFF3C2C2)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.notifications_active_rounded,
            color: Color(0xFFBA1A1A),
            size: 22,
          ),
          const SizedBox(width: AppSizeWidth.w10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: AppFontSize.fontSize15,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8C1D1D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
