import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_font_size.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/search/widget/custom_static_chip.dart';
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
          builder: (context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p16,
                    vertical: AppPadding.p16,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
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
                            controller: controller.searchController,
                            onSubmitted: (value) {
                              controller.addSearch(value);
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
                        ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => buildChip(
                            label: controller.recentSearches[index],
                            icon: Icons.history,
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: AppSizeWidth.w10),
                          itemCount: controller.recentSearches.length,
                        ),

                        const SizedBox(height: AppSizeHeight.h20),

                        const Text(
                          "تخصصات شائعة",
                          style: TextStyle(
                            fontSize: AppFontSize.fontSize20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cBlack,
                          ),
                        ),
                        const SizedBox(height: AppSizeHeight.h10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return CustomStaticChip(
                              onTap: () {},
                              label: "باطنية",
                            );
                          },
                        ),

                        const SizedBox(height: AppSizeHeight.h20 * 1.5),

                        //! Results Example
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
                              '4 نتائج لـ "باطنية"',
                              style: TextStyle(
                                fontSize: AppFontSize.fontSize16 * 0.8,
                                color: AppColors.cGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSizeHeight.h10),

                        buildDoctorResult(
                          name: "د. أحمد محمود",
                          specialty: "أمراض القلب - 12 سنة خبرة",
                          initials: "أ.م",
                        ),
                        const SizedBox(height: AppSizeHeight.h10),
                        buildDoctorResult(
                          name: "د. لينا خليل",
                          specialty: "باطنية - 8 سنوات خبرة",
                          initials: "ل.خ",
                        ),
                        const SizedBox(height: AppSizeHeight.h10),
                        buildDoctorResult(
                          name: "د. سامر عودة",
                          specialty: "باطنية - 5 سنوات خبرة",
                          initials: "س.ع",
                        ),

                        const SizedBox(height: AppSizeHeight.h20 * 2),
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

  //! Recent-search chip (with a history icon)
  Widget buildChip({required String label, required IconData icon}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.cWhite,
        borderRadius: BorderRadius.circular(AppRadius.r30),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.cGrey),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: AppFontSize.fontSize16 * 0.85,
              fontWeight: FontWeight.w600,
              color: AppColors.cBlack,
            ),
          ),
        ],
      ),
    );
  }

  //! Doctor result card
  Widget buildDoctorResult({
    required String name,
    required String specialty,
    required String initials,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16 * 0.75),
      decoration: BoxDecoration(
        color: AppColors.cWhite,
        borderRadius: BorderRadius.circular(AppRadius.r20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.cSecondary.withOpacity(0.15),
            child: Text(
              initials,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.cSecondary,
              ),
            ),
          ),
          const SizedBox(width: AppPadding.p16 * 0.75),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: AppFontSize.fontSize16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.cBlack,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  specialty,
                  style: const TextStyle(
                    fontSize: AppFontSize.fontSize16 * 0.8,
                    color: AppColors.cGrey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_left, color: AppColors.cGrey),
        ],
      ),
    );
  }
}

//! Static specialization chip (non-history)
