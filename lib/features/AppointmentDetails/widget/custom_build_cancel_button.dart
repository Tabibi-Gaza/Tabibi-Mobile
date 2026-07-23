import 'package:flutter/material.dart';

class CustomBuildCancelButton extends StatelessWidget {
  const CustomBuildCancelButton({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.cancel_outlined, size: 18, color: Color(0xFFE05353)),
      label: const Text(
        'إلغاء الموعد',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFFE05353),
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFFE05353)),
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
