import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CustomePageView extends StatelessWidget {
  final String pathImage;
  final String title;
  final String subTitle;
  final GestureTapCallback onTap;
  const CustomePageView({
    super.key,
    required this.pathImage,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(pathImage, width: AppSizeWidth.w400),
        const SizedBox(height: AppSizeHeight.h20),
        SizedBox(
          height: AppSizeHeight.h250,
          child: Stack(
            children: <Widget>[
              Container(
                width: AppSizeWidth.w350,
                height: AppSizeHeight.h220,
                padding: const EdgeInsets.only(
                  left: AppPadding.p30,
                  right: AppPadding.p30,
                  top: AppPadding.p20,
                  bottom: AppPadding.p40,
                ),

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      color: AppColors.cPrimary.withValues(alpha: 0.3),
                      offset: const Offset(0, 0),
                      blurRadius: AppRadius.r20,
                    ),
                  ],
                  color: AppColors.cWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppRadius.r20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: AppColors.cPrimary,
                        fontSize: AppFontSize.fontSize25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    const SizedBox(height: AppSizeHeight.h7),
                    Text(
                      subTitle,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: AppColors.cGrey,
                        fontSize: AppFontSize.fontSize19,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: AppRadius.r30,
                  backgroundColor: AppColors.cPrimary,
                  child: InkWell(
                    onTap: onTap,
                    child: Icon(Icons.arrow_forward, color: AppColors.cWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
