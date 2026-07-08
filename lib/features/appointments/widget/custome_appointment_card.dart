import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/appointments/model/appointment_model.dart';

class CustomeAppointmentCard extends StatelessWidget {
  const CustomeAppointmentCard({
    super.key,
    required this.appointment,

  });

final AppointmentModel appointment;


  Color get statusColor =>
      appointment.isConfirmed ? AppColors.cTertiary : const Color(0xFFB5651D);

  Color get statusBg => appointment.isConfirmed
      ? AppColors.cTertiary.withOpacity(0.1)
      : const Color(0xFFFFF1DA);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cWhite,
        borderRadius: BorderRadius.circular(AppRadius.r20),
        border: Border(left: BorderSide(color: statusColor, width: 4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      // padding: const EdgeInsets.all(AppPadding.p16),

      child: Column(

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p10,
                  vertical: AppPadding.p5,
                ),

                decoration: BoxDecoration(
                  color: statusBg,
                  borderRadius: BorderRadius.circular(AppRadius.r8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      appointment.isConfirmed
                          ? Icons.check_circle_rounded
                          : Icons.hourglass_bottom_rounded,

                      size: 14,
                      color: statusColor,
                    ),
                    const SizedBox(width:AppSizeWidth.w4),
                    Text(
                      appointment.isConfirmed ? "مؤكد" : "قيد الانتظار",
                      style: TextStyle(
                        fontSize: AppFontSize.fontSize11 ,
                        fontWeight: FontWeight.w700,
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  Text(
                   appointment.name,

                    style: const TextStyle(
                      fontSize: AppFontSize.fontSize16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.cBlack,
                    ),
                  ),

                  const SizedBox(height:AppSizeHeight.h2),

                  Text(
                    appointment.specialty,

                    style: const TextStyle(
                      fontSize: AppFontSize.fontSize16,
                      color: AppColors.cGrey,
                    ),
                  ),
                ],
              ),

              const SizedBox(width: AppPadding.p16),

              CircleAvatar(
                radius: 22,

                backgroundColor: AppColors.cPrimary.withOpacity(0.1),

                backgroundImage: appointment.image.isNotEmpty
                    ? NetworkImage(appointment.image)
                    : null,

                child: appointment.image.isEmpty
                    ? Text(
                        appointment.initials,

                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.cPrimary,
                        ),
                      )
                    : null,
              ),
            ],
          ),

          const SizedBox(height: AppSizeHeight.h10),

          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF6F7FB),

              borderRadius: BorderRadius.circular(AppRadius.r20),
            ),

            padding: const EdgeInsets.symmetric(vertical: AppPadding.p10, horizontal: AppPadding.p12),

            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Text(
                        appointment.time,
                        style: const TextStyle(
                          fontSize: AppFontSize.fontSize16 ,
                          color: AppColors.cBlack,
                        ),
                      ),
                      const SizedBox(width: AppSizeWidth.w6),
                      const Icon(
                        Icons.access_time_rounded,
                        size: 16,
                        color: AppColors.cGrey,
                      ),
                    ],
                  ),
                ),

                Container(width: AppSizeWidth.w1, height: AppSizeHeight.h16, color: AppColors.cGrey.withOpacity(.6)),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_today_outlined,
                        size: 16,
                        color: AppColors.cGrey,
                      ),
                      const SizedBox(width: AppSizeWidth.w6),
                      Text(
                        appointment.date,
                        style: const TextStyle(
                          fontSize: AppFontSize.fontSize16 ,
                          color: AppColors.cBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: AppSizeHeight.h10),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_left, color: AppColors.cGrey),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.redAccent),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.r20),
                  ),
                ),

                child: const Text(
                  "إلغاء",

                  style: TextStyle(color: Colors.redAccent, fontSize: 13),
                ),
              ),

              const SizedBox(width: 8),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: AppColors.cPrimary),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.r20),
                  ),
                ),

                child: const Text(
                  "إعادة جدولة",

                  style: TextStyle(color: AppColors.cPrimary, fontSize: 13),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
