import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:tabibi_app/core/constants/app_colors.dart';
import 'package:tabibi_app/features/mainHomePage/navigation/main_nav_config.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final PersistentTabController _navController = PersistentTabController(
    initialIndex: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 70,
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.cGrey.withOpacity(0.5),
            blurRadius: 8,
            spreadRadius: 1,
            blurStyle: BlurStyle.normal,
            offset: Offset(0, 0),
          ),
        ],
      ),
      context,
      controller: _navController,
      screens: MainNavConfig.screensList(),
      items: MainNavConfig.navBarsItems(),
      navBarStyle: NavBarStyle.style1,
      backgroundColor: Colors.white,
    );
  }
}
