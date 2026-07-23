import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/search/widget/coustom_build_chip.dart';
import 'package:tabibi_app/features/search/widget/coustom_build_doctor_result.dart';
import 'package:tabibi_app/features/search/controller/search_screen_controller.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final SearchScreenController controller = Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,
      body: SafeArea(
        child: GetBuilder<SearchScreenController>(
          init: controller,
          builder: (ctrl) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p16,
                    vertical: AppPadding.p16,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          ctrl.onPressedBack();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.cPrimary,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.cWhite,
                            borderRadius: BorderRadius.circular(AppRadius.r20),
                            border: Border.all(color: AppColors.cGrey),
                          ),
                          child: TextField(
                            controller: ctrl.searchController,
                            onSubmitted: (value) {
                              ctrl.addSearch(value);
                            },
                            onChanged: (value) {
                              ctrl.onChanged(value);
                            },
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "ابحث عن طبيب أو تخصص",
                              hintStyle: TextStyle(
                                color: AppColors.cGrey,
                                fontSize: AppFontSize.fontSize16,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: AppColors.cGrey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSizeHeight.h10),

                        //! Recent Searches
                        const Text(
                          "عمليات بحث سابقة",
                          style: TextStyle(
                            fontSize: AppFontSize.fontSize20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cBlack,
                          ),
                        ),
                        const SizedBox(height: AppSizeHeight.h10),
                        if (ctrl.recentSearches.isEmpty)
                          const Text(
                            "لا توجد عمليات بحث سابقة",
                            style: TextStyle(
                              fontSize: AppFontSize.fontSize16,
                              color: AppColors.cGrey,
                            ),
                          )
                        else
                          Wrap(
                            spacing: AppSizeWidth.w10,
                            runSpacing: AppSizeHeight.h10,
                            children: List.generate(
                              ctrl.recentSearches.length,
                              (index) => CoustomBuildChip(
                                label: ctrl.recentSearches[index],
                                icon: Icons.history,
                              ),
                            ),
                          ),

                        const SizedBox(height: AppSizeHeight.h20),

                        if (ctrl.searchController.text.trim().isNotEmpty) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "نتائج البحث",
                                style: TextStyle(
                                  fontSize: AppFontSize.fontSize20,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.cBlack,
                                ),
                              ),
                              Text(
                                '${ctrl.list.length} نتيجة لـ "${ctrl.searchController.text}"',
                                style: TextStyle(
                                  fontSize: AppFontSize.fontSize16,
                                  color: AppColors.cGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSizeHeight.h10),

                          if (ctrl.list.isEmpty)
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 40.0),
                                child: Text(
                                  "لا يوجد نتائج",
                                  style: TextStyle(
                                    fontSize: AppFontSize.fontSize18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.cGrey,
                                  ),
                                ),
                              ),
                            )
                          else
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  CoustomBuildDoctorResult(
                                    name: ctrl.list[index].name,
                                    specialty: ctrl.list[index].specialty,
                                    onTap: () {},
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: AppSizeHeight.h10),
                              itemCount: ctrl.list.length,
                            ),

                          const SizedBox(height: AppSizeHeight.h20),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
