import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback onTap;

  const LogoutButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,

      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppPadding.p10),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: AppSizeWidth.w1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout, color: Colors.red),

            const SizedBox(width: AppSizeWidth.w12),
            const Text(
              "تسجيل الخروج",
              style: TextStyle(
                color: Colors.red,
                fontSize: AppFontSize.fontSize18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
