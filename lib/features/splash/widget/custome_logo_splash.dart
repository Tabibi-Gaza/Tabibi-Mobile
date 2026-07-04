import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CustomeLogoSplash extends StatelessWidget {
  const CustomeLogoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppAssets.aLogoWhite, width: AppSizeWidth.w150),
    );
  }
}
