import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class CustomeButtonAuth extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  const CustomeButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: onPressed==null ? AppColors.cPrimary.withValues(alpha: 0.4) : AppColors.cPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.r10)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.cWhite,
          fontSize: AppFontSize.fontSize16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
