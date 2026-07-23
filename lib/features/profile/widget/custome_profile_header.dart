import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';

class ProfileHeader extends StatelessWidget {

  final String image;
  final String name;
  final String email;

  const ProfileHeader({
    super.key,
    required this.image,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: AppRadius.r40,
              backgroundImage: NetworkImage(image),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: AppRadius.r15,
                backgroundColor: AppColors.cPrimary,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: AppFontSize.fontSize15,
                ),
              ),
            )

          ],
        ),
        const SizedBox(height: AppPadding.p10),
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppFontSize.fontSize18,
          ),
        ),
        Text(
          email,
          style: const TextStyle(
            color: AppColors.cGrey,
            fontSize: AppFontSize.fontSize16,
          ),
        )

      ],
    );

  }

}