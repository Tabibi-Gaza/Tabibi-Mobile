import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppBar({
    super.key,
    this.onPressedActions,
    required this.title,
    this.leading,
    this.actions,
  });
  final Widget? leading;
  final VoidCallback? onPressedActions;
  final String title;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.cWhite,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: AppFontSize.fontSize20,
          fontWeight: FontWeight.w700,
          color: AppColors.cPrimary,
        ),
      ),
      actions: [
        actions ??
            IconButton(
              onPressed: onPressedActions,
              icon: const Icon(
                Icons.notifications_none_rounded,
                color: AppColors.cPrimary,
              ),
            ),
      ],
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
