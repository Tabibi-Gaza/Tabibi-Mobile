import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/features/onBording/controller/on_bording_controller.dart';
import 'package:tabibi_app/features/onBording/data/onboarding_data.dart';
import 'package:tabibi_app/features/onBording/widget/custome_app_bar.dart';
import 'package:tabibi_app/features/onBording/widget/custome_page_view.dart';

class OnBordingScreen extends GetView<OnBordingController> {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Obx(
          () => CustomeAppBar(
            position: controller.index.value,
            dotsCount: onboardingData.length,
            onTap: (index) {
              controller.onTap(index);
            },
          ),
        ),
        leading: Obx(
          () => controller.index.value <= 0
              ? Text("")
              : IconButton(
                  onPressed: () {
                    controller.onPrevious();
                  },
                  icon: Icon(Icons.arrow_back_sharp, color: AppColors.cPrimary),
                ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              controller.onSkip();
            },
            child: Text(
              AppString.skipText,
              style: TextStyle(
                color: AppColors.cPrimary,
                fontSize: AppFontSize.fontSize16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.cWhite),
        child: SafeArea(
          child: PageView.builder(
            itemCount: onboardingData.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),

            controller: controller.pageController,
            onPageChanged: (index) {
              controller.index.value = index;
            },
            itemBuilder: (context, index) {
              return CustomePageView(
                pathImage: onboardingData[index].image!,
                title: onboardingData[index].title!,
                subTitle: onboardingData[index].subTitle!,
                onTap: () {
                  controller.onNext();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
