import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/backgroundGradient.dart';
import 'package:tabibi_app/features/splash/controller/splash_screen_conroller.dart';
import 'package:tabibi_app/features/splash/widget/custome_logo_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Backgroundgradient(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomeLogoSplash(),
             SizedBox(height: AppSizeHeight.h40),
            const CircularProgressIndicator(color: AppColors.cWhite),
          ],
        ),
      ),
    );
  }
}
