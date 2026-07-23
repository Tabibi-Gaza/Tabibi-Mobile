import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/models/appointment_status.dart';
import 'package:tabibi_app/core/widget/custom_state_request.dart';

class CustomBuildDoctorCard extends StatelessWidget {
  const CustomBuildDoctorCard({super.key, required this.state, required this.image, required this.nameDoctor, required this.specialityDoctor, required this.textCalendar, required this.textTime, required this.textAddress});
  final AppointmentStatus state;
  final String image;
  final String nameDoctor;
  final String specialityDoctor;
  final String textCalendar;
  final String textTime;
  final String textAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.r16),
        boxShadow: [
          BoxShadow(
            color: AppColors.cBlack.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomeStateRequest(status: state),
              const Spacer(),
              CircleAvatar(
                radius: AppRadius.r25,
                backgroundImage: NetworkImage(image),
                backgroundColor: AppColors.cGrey,
              ),
            ],
          ),
          const SizedBox(height: AppSizeHeight.h10),
           Text(
            nameDoctor,
            style: TextStyle(
              fontSize: AppFontSize.fontSize16,
              fontWeight: FontWeight.bold,
              color: AppColors.cBlack,
            ),
          ),
          const SizedBox(height: AppSizeHeight.h2),
          Text(
            specialityDoctor,
            style: TextStyle(
              fontSize: AppFontSize.fontSize13,
              color: AppColors.cGrey,
            ),
          ),
          const Divider(height: AppSizeHeight.h24),
        
           Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.calendar_today_outlined, size: 18, color: Colors.grey[500]),
        const SizedBox(width: AppSizeWidth.w8),
        Expanded(
          child: Text(
            textCalendar,
            style: const TextStyle(
              fontSize: AppFontSize.fontSize13,
              color: AppColors.cBlack,
            ),
          ),
        ),
      ],
    ),
          const SizedBox(height: AppSizeHeight.h10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.access_time, size: 18, color: Colors.grey[500]),
              const SizedBox(width: AppSizeWidth.w8),
              Expanded(
                child: Text(
                  textTime,
                  style: const TextStyle(
                    fontSize: AppFontSize.fontSize13,
                    color: AppColors.cBlack,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizeHeight.h10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined, size: 18, color: Colors.grey[500]),
              const SizedBox(width: AppSizeWidth.w8),
              Expanded(
                child: Text(
                  textAddress,
                  style: const TextStyle(
                    fontSize: AppFontSize.fontSize13,
                    color: AppColors.cBlack,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}