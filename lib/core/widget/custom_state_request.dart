import 'package:flutter/material.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/models/appointment_status.dart';

class CustomeStateRequest extends StatelessWidget {
  const CustomeStateRequest({
    Key? key,
    required this.status,
  }) : super(key: key);

  final AppointmentStatus status;

  @override
  Widget build(BuildContext context) {
    String arabicText;
    Color statusColor;
    IconData statusIcon;
    Color statusBg;

    switch (status) {
      case AppointmentStatus.confirmed:
        arabicText = 'مؤكد';
        statusColor = const Color(0xFF1FAA71);
        statusIcon = Icons.check_circle_rounded;
        statusBg = const Color(0xFFE8F5E9);
        break;
      case AppointmentStatus.pending:
        arabicText = 'قيد الانتظار';
        statusColor = const Color(0xFFFFA726);
        statusIcon = Icons.hourglass_bottom_rounded;
        statusBg = const Color(0xFFFFF3E0);
        break;
    }

    return Container(
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
            statusIcon,
            size: 14,
            color: statusColor,
          ),
          const SizedBox(width: AppSizeWidth.w4),
          Text(
            arabicText,
            style: TextStyle(
              fontSize: AppFontSize.fontSize11,
              fontWeight: FontWeight.w700,
              color: statusColor,
            ),
          ),
        ],
      ),
    );
  }
}
