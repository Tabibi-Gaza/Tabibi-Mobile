import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';

class CustomHederRegister extends StatelessWidget {
  const CustomHederRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.aLogoHorizantal,
            width: AppSizeWidth.w150,
            colorFilter: ColorFilter.mode(AppColors.cWhite, BlendMode.srcIn),
          ),
           SizedBox(height: AppSizeHeight.h10),
          Text(
            AppString.registerTitle,
            style: TextStyle(
              color: AppColors.cWhite,
              fontSize: AppFontSize.fontSize30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            AppString.registerSubTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.cWhite,
              fontSize: AppFontSize.fontSize16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
