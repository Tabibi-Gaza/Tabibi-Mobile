import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    super.key,
    required this.position,
    required this.dotsCount,
    required this.onTap,
  });
  final int position;
  final int dotsCount;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      onTap: onTap,
      dotsCount: dotsCount,
      position: position.toDouble(),
      animate: true,
      decorator: DotsDecorator(
        color: AppColors.cPrimary.withValues(alpha: 0.3),
        activeColor: AppColors.cPrimary,
        size: const Size.square(12.0),
        activeSize: const Size(40.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
