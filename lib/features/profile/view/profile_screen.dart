import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/core/constants/app_padding.dart';
import 'package:tabibi_app/core/constants/app_radius.dart';
import 'package:tabibi_app/core/constants/app_size.dart';
import 'package:tabibi_app/features/profile/controller/profile_controller.dart';
import 'package:tabibi_app/features/profile/widget/custome_logout_button.dart';
import 'package:tabibi_app/features/profile/widget/custome_profile_header.dart';
import 'package:tabibi_app/features/profile/widget/custome_profile_menu_item.dart';
import 'package:tabibi_app/features/profile/widget/custome_profile_switch_item.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cWhite,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              ProfileHeader(
                image: controller.user.image!,
                name: controller.user.name!,
                email: controller.user.email!,
              ),
              const SizedBox(height: AppSizeHeight.h25),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.r20),
                ),
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.person_outline,
                      title: "معلوماتي الشخصية",
                      onTap: () {
                        controller.goToPersonalInformation();
                      },
                    ),

                    const Divider(height: AppSizeHeight.h1),
                    ProfileMenuItem(
                      icon: Icons.lock_outline,
                      title: "تغيير كلمة المرور",
                      onTap: () {},
                    ),

                    const Divider(height: AppSizeHeight.h1),
                    ProfileMenuItem(
                      icon: Icons.language,
                      title: "اللغة",
                      trailing: "العربية",
                      onTap: () {},
                    ),

                    const Divider(height: AppSizeHeight.h1),
                    Obx(
                      () => ProfileSwitchItem(
                        value: controller.notification.value,
                        onChanged: controller.changeNotification,
                      ),
                    ),

                    const Divider(height: AppSizeHeight.h1),
                    ProfileMenuItem(
                      icon: Icons.description_outlined,
                      title: "سياسة الخصوصية والشروط",
                      onTap: () {},
                    ),

                    const Divider(height: AppSizeHeight.h1),

                    ProfileMenuItem(
                      icon: Icons.help_outline,
                      title: "المساعدة والدعم",
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const Spacer(),

              LogoutButton(onTap: controller.logout),
            ],
          ),
        ),
      ),
    );
  }
}
