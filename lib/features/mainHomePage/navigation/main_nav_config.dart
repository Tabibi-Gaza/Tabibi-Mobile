import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/features/appointments/view/appointments_screen.dart';
import 'package:tabibi_app/features/home/view/home_screen.dart';
import 'package:tabibi_app/features/profile/view/profile_screen.dart';
import 'package:tabibi_app/features/records/view/records_screen.dart';

class MainNavConfig {
  static List<Widget> screensList() {
    return [
      HomeScreen(),
      AppointmentsScreen(),
      RecordsScreen(),
      ProfileScreen(),
    ];
  }

  static List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "الرئيسية",
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        activeColorPrimary: AppColors.cSecondary,
        inactiveColorPrimary: AppColors.cGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.calendar_month),
        title: "مواعيدي",
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        activeColorPrimary: AppColors.cSecondary,
        inactiveColorPrimary: AppColors.cGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.fact_check),
        title: "سجلاتي",
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        activeColorPrimary: AppColors.cSecondary,
        inactiveColorPrimary: AppColors.cGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: "حسابي",
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        activeColorPrimary: AppColors.cSecondary,
        inactiveColorPrimary: AppColors.cGrey,
      ),
    ];
  }
}
