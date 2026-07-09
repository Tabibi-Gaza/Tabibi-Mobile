import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';
import 'package:tabibi_app/features/appointments/controller/appointments_controller.dart';
import 'package:tabibi_app/features/appointments/widget/custome_appointment_card.dart';
import 'package:tabibi_app/features/appointments/widget/custome_build_tab_button.dart';

class AppointmentsScreen extends StatelessWidget {
  AppointmentsScreen({super.key});
  final AppointmentsController controller = Get.put(AppointmentsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.cPrimary,
        onPressed: () {
          Get.toNamed(AppRoutes.selectSpecialtyScreen);
        },
        child: const Icon(Icons.add, color: AppColors.cWhite),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30,vertical: AppPadding.p30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppString.appointmentsTitle,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize24,
                  fontWeight: FontWeight.w700,
                  color: AppColors.cBlack,
                ),
              ),
              const SizedBox(height: AppSizeHeight.h8),
              const Text(
                AppString.appointmentsDescription,
                style: TextStyle(
                  fontSize: AppFontSize.fontSize16,
                  color: AppColors.cGrey,
                ),
              ),
              const SizedBox(height: AppSizeHeight.h20),
              GetBuilder<AppointmentsController>(
                builder: (controller) {
                  return Container(
                    padding: const EdgeInsets.all(AppPadding.p4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F2F6),
                      borderRadius: BorderRadius.circular(AppRadius.r30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomeBuildTabButton(
                            label: AppString.appointmentsUpcoming,
                            isSelected: controller.selectedTab == 0,
                            onTap: () => controller.changeTab(0),
                          ),
                        ),
                        Expanded(
                          child: CustomeBuildTabButton(
                            label: AppString.appointmentsPast,
                            isSelected: controller.selectedTab == 1,
                            onTap: () => controller.changeTab(1),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSizeHeight.h20),
              GetBuilder<AppointmentsController>(
                builder: (controller) {
                  final listNew = controller.selectedTab == 0
                      ? controller.appointmentCardList
                      : controller.past;
        
                  if (listNew.isEmpty) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          children: [
                            Icon(
                              Icons.event_busy_rounded,
                              size: 48,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(height: AppSizeHeight.h10),
                            const Text(
                              "لا توجد مواعيد",
                              style: TextStyle(color: AppColors.cGrey),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
        
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listNew.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: AppSizeHeight.h20),
                    itemBuilder: (context, index) {
                      return CustomeAppointmentCard(appointment: listNew[index]);
                    },
                  );
                },
              ),
        
              const SizedBox(height: AppSizeHeight.h20),
            ],
          ),
        ),
      ),
    );
  }
}
