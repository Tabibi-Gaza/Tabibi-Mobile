import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CustomBuildRescheduleButton extends StatelessWidget {
  const CustomBuildRescheduleButton({Key? key, this.onPressed}) : super(key: key);
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.event_repeat, size: 18),
      label: const Text(
        'إعادة جدولة الموعد',
        style: TextStyle(fontFamily: 'Cairo', fontSize: 14, fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.cPrimary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
      ),
    );
  }
}
