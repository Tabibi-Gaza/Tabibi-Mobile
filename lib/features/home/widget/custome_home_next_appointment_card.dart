import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/custome_button_auth.dart';

class CustomeHomeNextAppointmentCard extends StatelessWidget {
  const CustomeHomeNextAppointmentCard({
    super.key,
    required this.nameDoctor,
    required this.imageDoctor,
    required this.date,
    required this.time,
    required this.specialty,
    required this.state,
    required this.onPressed,
  });

  final String nameDoctor;
  final String imageDoctor;
  final String date;
  final String time;
  final String specialty;
  final String state;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(
        color: AppColors.cWhite,
        borderRadius: BorderRadius.circular(AppRadius.r20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.cSecondary.withOpacity(.1),
                radius: AppRadius.r30,
                child: CircleAvatar(
                  radius: AppRadius.r28,
                  backgroundColor: AppColors.cSecondary,
                  backgroundImage: AssetImage(imageDoctor),
                ),
              ),
              const SizedBox(width: AppPadding.p16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nameDoctor,
                          style: TextStyle(
                            fontSize: AppFontSize.fontSize16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cBlack,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p10,
                            vertical: AppPadding.p4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.cTertiary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            state,
                            style: TextStyle(
                              fontSize: AppFontSize.fontSize13,
                              fontWeight: FontWeight.w700,
                              color: AppColors.cTertiary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizeHeight.h4),
                    Text(
                      specialty,
                      style: TextStyle(
                        fontSize: AppFontSize.fontSize16,
                        color: AppColors.cGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Divider(height: AppSizeHeight.h20),

          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 18,
                color: AppColors.cGrey,
              ),
              const SizedBox(width: AppSizeWidth.w8),
              Text(
                date,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize16,
                  color: AppColors.cBlack,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizeHeight.h8),
          Row(
            children: [
              const Icon(
                Icons.access_time_rounded,
                size: 18,
                color: AppColors.cGrey,
              ),
              const SizedBox(width: AppSizeWidth.w8),
              Text(
                time,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize16,
                  color: AppColors.cBlack,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizeHeight.h20),
          SizedBox(
            width: double.infinity,
            child: CustomeButtonAuth(
              text: "التفاصيل",
              onPressed: onPressed,
              color: AppColors.cSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
