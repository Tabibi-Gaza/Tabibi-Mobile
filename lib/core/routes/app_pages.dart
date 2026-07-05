import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';
import 'package:tabibi_app/features/auth/login/view/login_screen.dart';
import 'package:tabibi_app/features/auth/register/view/register_scrren.dart';
import 'package:tabibi_app/features/onBording/view/on_bording_screen.dart';
import 'package:tabibi_app/features/splash/view/splash_screen.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.onBording, page: () => OnBordingScreen()),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      curve: Curves.bounceIn,
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterScrren(),
      curve: Curves.bounceIn,
    ),
  ];
}
