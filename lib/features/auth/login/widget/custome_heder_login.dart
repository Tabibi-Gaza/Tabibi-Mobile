import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CustomeHederLogin extends StatelessWidget {
  const CustomeHederLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SvgPicture.asset(
          AppAssets.aLogoHorizantal,
          width: AppSizeWidth.w170,
          colorFilter: ColorFilter.mode(AppColors.cWhite, BlendMode.srcIn),
        ),
      ),
    );
  }
}
