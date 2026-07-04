import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/splash/controller/splash_screen_conroller.dart';
import 'package:tabibi_app/features/splash/widget/custome_logo_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenConroller());
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.cPrimary, AppColors.cSecondary],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomeLogoSplash(),
            const SizedBox(height: AppSizeHeight.h40),
            const CircularProgressIndicator(color: AppColors.cWhite),
          ],
        ),
      ),
    );
  }
}
