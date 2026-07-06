import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class CustomeHomeDeptChip extends StatelessWidget {
  const CustomeHomeDeptChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
  });
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        onSelected: onSelected,
        backgroundColor: AppColors.cWhite,
        selectedColor: AppColors.cPrimary.withOpacity(0.1),
        labelStyle: TextStyle(
          fontSize: AppFontSize.fontSize16,
          fontWeight: FontWeight.w600,
          color: selected ? AppColors.cPrimary : AppColors.cBlack,
        ),
        side: BorderSide(
          color: selected ? AppColors.cPrimary : Colors.grey.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.r30),
        ),
      ),
    );
  }
}
