import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';
import 'package:tabibi_app/features/auth/view/login_screen.dart';
import 'package:tabibi_app/features/onBording/view/on_bording_screen.dart';
import 'package:tabibi_app/features/splash/view/splash_screen.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.onBording, page: () => OnBordingScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
  ];
}
