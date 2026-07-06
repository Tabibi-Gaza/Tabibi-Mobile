import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:tabibi_app/features/main%20home%20page/navigation/main_nav_config.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final PersistentTabController _navController = PersistentTabController(
    initialIndex: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _navController,
      screens: MainNavConfig.screensList(),
      items: MainNavConfig.navBarsItems(),
      navBarStyle: NavBarStyle.style1,
      backgroundColor: Colors.white,
    );
  }
}
