import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/core/widget/custome_app_bar.dart';
import 'package:tabibi_app/core/widget/custome_button_auth.dart';
import 'package:tabibi_app/features/selectSpecialty/controller/select_specialty_controller.dart';
import 'package:tabibi_app/features/selectSpecialty/widget/custom_specialty_card.dart';
import 'package:tabibi_app/features/selectSpecialty/widget/doctor_card.dart';

class SelectSpecialtyScreen extends StatelessWidget {
  SelectSpecialtyScreen({super.key});

  final SelectSpecialtyController controller = Get.put(
    SelectSpecialtyController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      appBar: CustomeAppBar(
        title: 'احجز موعد',
        leading: IconButton(
          onPressed: () {
            controller.toBackButton();
          },
          icon: Icon(Icons.arrow_back, color: AppColors.cPrimary),
        ),
        actions: Text(""),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p20),
          child: GetBuilder<SelectSpecialtyController>(
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: EasyStepper(
                        activeStep: controller.indexSelectedSpecialty,
                        lineStyle: const LineStyle(
                          lineLength: 70,
                          lineType: LineType.normal,
                          defaultLineColor: AppColors.cGrey,
                          finishedLineColor: AppColors.cPrimary,
                        ),
                        stepShape: StepShape.circle,
                        stepRadius: 22,
                        activeStepBackgroundColor: AppColors.cPrimary,
                        finishedStepBackgroundColor: AppColors.cPrimary,
                        unreachedStepBackgroundColor: Colors.white,
                        activeStepBorderColor: AppColors.cPrimary,
                        finishedStepBorderColor: AppColors.cPrimary,
                        unreachedStepBorderColor: Colors.grey,
                        activeStepTextColor: AppColors.cPrimary,
                        finishedStepTextColor: AppColors.cPrimary,
                        unreachedStepTextColor: AppColors.cGrey,
                        showLoadingAnimation: false,
                        steps: [
                          EasyStep(
                            customStep: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            title: "التخصص",
                          ),
                          EasyStep(
                            customStep: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            title: "الطبيب",
                          ),
                          EasyStep(
                            customStep: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            title: "الموعد",
                          ),
                        ],
                        onStepReached: (index) {
                          controller.changeStep(index);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizeHeight.h20),
                  Expanded(
                    child: PageView(
                      controller: controller.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (index) {
                        controller.indexSelectedSpecialty = index;
                      },
                      children: [
                        // page 1
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: controller.specialties.length,
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 15.0,
                                    mainAxisSpacing: 15.0,
                                    childAspectRatio: 1.5,
                                  ),
                              itemBuilder: (context, index) {
                                return SpecialtyCard(
                                  specialty: controller.specialties[index],
                                  onTap: () {
                                    controller.changeSelectedSpecialty(index);
                                  },
                                  isSelected: controller.selectedSpecialtyIndex == index,
                                );
                              },
                            ),
                            CustomeButtonAuth(
                              text: 'التالي',
                              onPressed: controller.isSpecialtySelected
                                  ? () {
                                controller.nextPage();
                              }
                                  : null,
                            ),

                          ],
                        ),
                        // page 2
                        Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: controller.doctors.length,
                                itemBuilder: (context, index) {
                                  return DoctorCard(
                                    onTap: (){
                                      controller.changeSelectedDoctor(index);
                                    },
                                    doctor: controller.doctors[index],
                                    isLast: controller.selectedDoctorIndex == index,
                                  );
                                },
                              ),
                            ),
                            CustomeButtonAuth(
                              text: 'التالي',
                              onPressed: controller.isDoctorSelected
                                  ? () {
                                controller.nextPage();
                              }
                                  : null,
                            ),
                          ],
                        ),
                        // page 3
                        Column(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'اختر اليوم',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: AppSizeHeight.h10),
                                    SizedBox(
                                      height: 80,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: controller.availableDays.length,
                                        itemBuilder: (context, index) {
                                          final day = controller.availableDays[index];
                                          final isSelected = controller.selectedDayIndex == index;
                                          return GestureDetector(
                                            onTap: () {
                                              controller.changeSelectedDay(index);
                                            },
                                            child: Container(
                                              width: 70,
                                              margin: const EdgeInsets.only(left: 10),
                                              decoration: BoxDecoration(
                                                color: isSelected ? AppColors.cPrimary : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    day['day']!,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      color: isSelected ? Colors.white : Colors.black,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    day['date']!,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: isSelected ? Colors.white : Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: AppSizeHeight.h20),
                                    const Text(
                                      'اختر الوقت',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: AppSizeHeight.h10),
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 10,
                                      children: List.generate(
                                        controller.availableTimes.length,
                                        (index) {
                                          final time = controller.availableTimes[index];
                                          final isSelected = controller.selectedTimeIndex == index;
                                          return GestureDetector(
                                            onTap: () {
                                              controller.changeSelectedTime(index);
                                            },
                                            child: Container(
                                              width: 80,
                                              padding: const EdgeInsets.symmetric(vertical: 12),
                                              decoration: BoxDecoration(
                                                color: isSelected ? AppColors.cPrimary : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(12),
                                                border: Border.all(
                                                  color: isSelected ? AppColors.cPrimary : Colors.grey.shade300,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  time,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: isSelected ? Colors.white : Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomeButtonAuth(
                              text: 'تأكيد الحجز',
                              onPressed: controller.isDateTimeSelected
                                  ? () {
                                controller.onTapBookingConfirmation();
                              }
                                  : null,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
