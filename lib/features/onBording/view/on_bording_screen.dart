import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/features/onBording/controller/on_bording_controller.dart';
import 'package:tabibi_app/features/onBording/data/onboarding_data.dart';
import 'package:tabibi_app/features/onBording/widget/custome_app_bar.dart';
import 'package:tabibi_app/features/onBording/widget/custome_page_view.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final OnBordingController _onBordingController = Get.put(
    OnBordingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Obx(() {
          return CustomeAppBar(
            position: _onBordingController.index.value,
            dotsCount: onboardingData.length,
            onTap: (index) {
              _onBordingController.onTap(index);
            },
          );
        }),
        leading: Obx(
          () => _onBordingController.index.value <= 0
              ? Text("")
              : IconButton(
                  onPressed: () {
                    _onBordingController.onPrevious();
                  },
                  icon: Icon(Icons.arrow_back_sharp, color: AppColors.cPrimary),
                ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              _onBordingController.onSkip();
            },
            child: Text(
              AppString.skipText,
              style: TextStyle(
                color: AppColors.cPrimary,
                fontSize: AppFontSize.fontSize16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cPrimary.withValues(alpha: 0.1),
        ),
        child: SafeArea(
          child: PageView.builder(
            itemCount: onboardingData.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),

            controller: _onBordingController.pageController,
            onPageChanged: (index) {
              _onBordingController.index.value = index;
            },
            itemBuilder: (context, index) {
              return CustomePageView(
                pathImage: onboardingData[index].image!,
                title: onboardingData[index].title!,
                subTitle: onboardingData[index].subTitle!,
                onTap: () {
                  _onBordingController.onNext();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
