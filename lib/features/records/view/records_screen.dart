import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/custome_app_bar.dart';
import 'package:tabibi_app/features/records/controller/records_controller.dart';
import 'package:tabibi_app/features/records/widget/custome_records_medical_card.dart';
import 'package:tabibi_app/features/records/widget/custome_records_tab_button.dart';

class RecordsScreen extends StatelessWidget {
   RecordsScreen({super.key});
  final RecordsController controller = Get.put(RecordsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffF9FAFF),

      appBar:  CustomeAppBar (
        leading: IconButton(
          onPressed:() {
            // Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.cPrimary,
          ),),
        onPressedActions: () {
        }, title: "السجل الطبي",
        ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ),
        child: Column(
          children: [
            const SizedBox(height: AppSizeHeight.h16),
            Container(
              padding: const EdgeInsets.all(AppPadding.p4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppRadius.r30),
              ),
              child: GetBuilder<RecordsController>(
                builder: (controller) {
                  return Row(
                    children: [
                      Expanded(
                        child: RecorsdsTabButton(
                          title: "ملفي الطبي",
                          isSelected: controller.selectedTabButton==0,
                          onTap: () {
                            controller.toggleTabButton(0);
                          },
                        ),
                      ),
                      Expanded(
                        child: RecorsdsTabButton(
                          title: "وصفاتي",
                          isSelected: controller.selectedTabButton==1,
                          onTap: () {
                            controller.toggleTabButton(1);
                          },
                        ),
                      ),
                  
                  
                      Expanded(
                        child: RecorsdsTabButton(
                          title: "الاستشارات", isSelected: controller.selectedTabButton==2,
                          onTap: () {
                            controller.toggleTabButton(2);
                          },
                        ),
                      ),
                  
                  
                      Expanded(
                        child: RecorsdsTabButton(
                          title: "الدفع",
                          isSelected: controller.selectedTabButton==3,
                          onTap: () {
                            controller.toggleTabButton(3);
                          },
                        ),
                      ),
                  
                  
                    ],
                  );
                }
              ),
            ),
            const SizedBox(height: AppSizeHeight.h20),
            const CustomeRecordsMedicalCard(

              title: "الحساسيات",

              icon: Icons.settings_outlined,

              tags: [

                "بنسلين",
                "مكسرات",

              ],

              tagColor: Color(0xffffe5e8),

            ),
            const SizedBox(height: AppSizeHeight.h16),
            const CustomeRecordsMedicalCard(
              title: "الأمراض المزمنة",

              icon: Icons.monitor_heart_outlined,

              tags: [

                "ضغط الدم",
                "سكري",

              ],

              tagColor: Color(0xffccebf1),

            ),
            const SizedBox(height: AppSizeHeight.h16),
            const Text(
              "يتم تحديث هذه المعلومات من قبل طبيبك",

              style: TextStyle(
                color: Colors.grey,
                fontSize:AppFontSize.fontSize16,

              ),

            )


          ],
        ),
      ),
    );
  }
}
