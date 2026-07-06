import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';

class CustomeHomeHeader extends StatelessWidget {
  const CustomeHomeHeader({
    super.key,
    required this.personPathImage,
    required this.personName,
    required this.iconNotification,
    required this.onChanged,
    required this.onTap,
    required this.onPressed,
  });
  final String personPathImage;
  final String personName;
  final IconData iconNotification;
  final ValueChanged<String> onChanged;
  final GestureTapCallback onTap;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeHeight.h250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.cSecondary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppRadius.r40),
          bottomRight: Radius.circular(AppRadius.r40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppPadding.p10,
          left: AppPadding.p30,
          right: AppPadding.p30,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: AppRadius.r28,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: AppRadius.r26,
                          backgroundImage: AssetImage(personPathImage),
                        ),
                      ),
                      const SizedBox(width: AppSizeWidth.w10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "مرحباً، $personName",
                            style: TextStyle(
                              fontSize: AppFontSize.fontSize17,
                              fontWeight: FontWeight.bold,
                              color: AppColors.cWhite,
                            ),
                          ),
                          Text(
                            "كيف تشعر اليوم؟",
                            style: TextStyle(
                              fontSize: AppFontSize.fontSize15,
                              fontWeight: FontWeight.bold,

                              color: AppColors.cWhite,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(iconNotification, color: Colors.white, size: 30),
                ],
              ),
              const SizedBox(height: AppSizeHeight.h30),

              //search bar
              Container(
                height: AppSizeHeight.h50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.cWhite,
                  borderRadius: BorderRadius.circular(AppRadius.r20),
                ),
                child: TextField(
                  onChanged: onChanged,
                  onTap: onTap,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "ابحث عن طبيب",
                    hintStyle: TextStyle(
                      fontSize: AppFontSize.fontSize15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.cGrey,
                    ),
                    suffixIcon: IconButton(
                      onPressed: onPressed,
                      icon: Icon(Icons.close_rounded, color: AppColors.cWhite),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.cGrey,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
