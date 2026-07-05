import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';

class CustomeButtonAuth extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomeButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: AppColors.cPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
