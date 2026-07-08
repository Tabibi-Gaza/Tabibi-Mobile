import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/Temporary%20lists/home_dept_clip_list.dart';
import 'package:tabibi_app/core/constants/app_assets.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/constants/app_string.dart';
import 'package:tabibi_app/features/home/controller/home_controller.dart';
import 'package:tabibi_app/features/home/widget/costome_home_quick_action.dart';
import 'package:tabibi_app/features/home/widget/custome_home_dept_chip.dart';
import 'package:tabibi_app/features/home/widget/custome_home_header.dart';
import 'package:tabibi_app/features/home/widget/custome_home_next_appointment_card.dart';
import 'package:tabibi_app/features/home/widget/custome_home_reminder_banner.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              GetBuilder<HomeController>(
                init: homeController,
                builder: (controller) {
                  return CustomeHomeHeader(
                    personPathImage: AppAssets.aPerson,
                    personName: 'سارة',
                    iconNotification: Icons.notifications_active_rounded,
                    onChanged: controller.onSearchTextFieldChange,
                    onTap: controller.onTapOnSearchTextField,
                    onPressed: controller.onTapOutsideSearchTextField,
                  );
                },
              ),
              SizedBox(height: AppSizeHeight.h20),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(
                      right: AppPadding.p30,
                      left: AppPadding.p30,
                      bottom: AppPadding.p40,
                      top: AppPadding.p10
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeHomeReminderBanner(
                          text: "تذكير: موعدك غداً الساعة 10:00 ص مع د. أحمد",
                        ),
                         SizedBox(height: AppSizeHeight.h20),
                         Text(
                          AppString.homeAppointment,
                          style: TextStyle(
                            fontSize: AppFontSize.fontSize20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cBlack,
                          ),
                        ),
                         SizedBox(height: AppSizeHeight.h10),
                        CustomeHomeNextAppointmentCard(
                          nameDoctor: "د. أحمد محمد",
                          imageDoctor: AppAssets.aDoctor,
                          date: "غداً، 15 أكتوبر 2023",
                          time: "10:00 ص",
                          specialty: "استشاري أمراض القلب",
                          state: "مؤكد",
                          onPressed: () {},
                        ),
                         SizedBox(height: AppSizeHeight.h20),
                         Text(
                          AppString.homeQuickActions,
                          style: TextStyle(
                            fontSize: AppFontSize.fontSize20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cBlack,
                          ),
                        ),
                         SizedBox(height: AppSizeHeight.h10),
                        GridView.count(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,

                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 1.5,
                          children: [
                            CostomeHomeQuickAction(
                              icon: Icons.chat_bubble_outline_rounded,
                              label: "استشارة طبية",
                              bgColor: AppColors.cTertiary.withOpacity(0.1),
                              iconColor: AppColors.cTertiary,
                              onTap: () {},
                            ),
                            CostomeHomeQuickAction(
                              icon: Icons.calendar_month_rounded,
                              label: "حجز موعد",
                              bgColor: AppColors.cSecondary.withOpacity(0.1),
                              iconColor: AppColors.cSecondary,
                              onTap: () {},
                            ),
                            CostomeHomeQuickAction(
                              icon: Icons.credit_card_rounded,
                              label: "المدفوعات",
                              bgColor: const Color(0xFFFFE9C7),
                              iconColor: const Color(0xFFB5651D),
                              onTap: () {},
                            ),
                            CostomeHomeQuickAction(
                              icon: Icons.description_outlined,
                              label: "وصفاتي",
                              bgColor: AppColors.cPrimary.withOpacity(0.1),
                              iconColor: AppColors.cPrimary,
                              onTap: () {},
                            ),
                          ],
                        ),
                         SizedBox(height: AppSizeHeight.h20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.homeDepartments,
                              style: TextStyle(
                                fontSize: AppFontSize.fontSize20,
                                fontWeight: FontWeight.w700,
                                color: AppColors.cBlack,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // TODO: Get.toNamed(AppRoutes.allDepartments)
                              },
                              child:  Text(
                                "الكل",
                                style: TextStyle(
                                  fontSize: AppFontSize.fontSize16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.cPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),

                         SizedBox(height: AppSizeHeight.h8),

                        SizedBox(
                          height: AppSizeHeight.h40,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return GetBuilder<HomeController>(
                                builder: (controller) {
                                  return CustomeHomeDeptChip(
                                    label: HomeDeptClipList
                                        .homeDeptClipList[index]
                                        .name,
                                    selected: HomeDeptClipList
                                        .homeDeptClipList[index]
                                        .selected,
                                    onSelected: (bool value) {
                                      homeController.changeSelected(index);
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
