import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/Temporary lists/doctors_list.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/custome_app_bar.dart';
import 'package:tabibi_app/features/AppointmentDetails/controller/appointment_details_controller.dart';
import '../widget/custom_build_cancel_button.dart';
import '../widget/custom_build_doctor_card.dart';
import '../widget/custom_build_instructions_card.dart';
import '../widget/custom_build_reschedule_button.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  AppointmentDetailsScreen({super.key});

  AppointmentDetailsController controller = Get.put(
    AppointmentDetailsController(),
  );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F8FB),
        appBar: CustomeAppBar(
          title: 'تفاصيل الموعد',
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () => Get.back(),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomBuildDoctorCard(
                state: DoctorsList.doctors[0].state,
                image: DoctorsList.doctors[0].image ?? AppAssets.aDoctor,
                nameDoctor: DoctorsList.doctors[0].name,
                specialityDoctor: DoctorsList.doctors[0].specialty,
                textCalendar: DoctorsList.doctors[0].calendar,
                textTime: DoctorsList.doctors[0].time,
                textAddress: DoctorsList.doctors[0].address,
              ),
              const SizedBox(height: AppSizeHeight.h14),
              CustomBuildInstructionsCard(),
              const SizedBox(height: AppSizeHeight.h20),
              CustomBuildRescheduleButton(
                onPressed: controller.rescheduleAppointment,
              ),
              const SizedBox(height: AppSizeHeight.h10),
              CustomBuildCancelButton(onPressed: controller.cancelAppointment),
            ],
          ),
        ),
      ),
    );
  }
}
