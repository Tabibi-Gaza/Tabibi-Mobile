import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';
import 'package:tabibi_app/features/splash/view/splash_screen.dart';

class AppPages {

  static const initial = AppRoutes.splash;

  static final routes = [

    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
    ),



  ];

}