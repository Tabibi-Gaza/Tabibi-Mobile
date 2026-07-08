// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class RecorsdsTabButton extends StatelessWidget {
  const RecorsdsTabButton({
    Key? key,
    required this.title,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);
  final String title;

  final bool isSelected;
  final GestureTapCallback? onTap;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.cPrimary : Colors.transparent,
          borderRadius: BorderRadius.circular(AppRadius.r15),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: AppFontSize.fontSize16,
            color: isSelected ? AppColors.cWhite : AppColors.cGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
