import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class Backgroundgradient extends StatelessWidget {
   Backgroundgradient({super.key, this.child, this.height});
Widget? child;
double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.r10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.cTertiary,
            AppColors.cQuaternary,
          ],
        ),
      ),
      child: child,
    );
  }
}