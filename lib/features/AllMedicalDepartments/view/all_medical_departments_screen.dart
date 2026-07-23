import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/widget/custome_app_bar.dart';
import 'package:tabibi_app/features/AllMedicalDepartments/controller/all_medical_departments_controller.dart';
import 'package:tabibi_app/features/AllMedicalDepartments/widget/custom_department_card.dart';
import 'package:tabibi_app/features/AllMedicalDepartments/widget/custom_search_bar.dart';

class AllMedicalDepartmentsScreen extends StatelessWidget {
  AllMedicalDepartmentsScreen({super.key});

  final AllMedicalDepartmentsController controller =
      Get.put(AllMedicalDepartmentsController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xFFF6F8FB),
        appBar: CustomeAppBar(
          title: 'جميع الأقسام الطبية',
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
              CustomSearchBar(
                hintText: 'ابحث عن قسم طبي',
                onChanged: (value) {
                  // TODO: implement search functionality
                },
              ),
              const SizedBox(height: AppPadding.p20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.9,
                ),
                itemCount: controller.departments.length,
                itemBuilder: (context, index) {
                  return CustomDepartmentCard(
                    department: controller.departments[index],
                    onTap: () => controller.onDepartmentTap(index),
                  );
                },
              ),
            ],
          ),
        ));


  }
}
