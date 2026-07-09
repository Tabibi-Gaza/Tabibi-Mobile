import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';
import 'package:tabibi_app/features/PersonalInformation/view/personal_information_screen.dart';
import 'package:tabibi_app/features/appointments/view/appointments_screen.dart';
import 'package:tabibi_app/features/auth/forgot%20password/bindings/forgot_password_binding.dart';
import 'package:tabibi_app/features/auth/login/bindings/login_bindings.dart';
import 'package:tabibi_app/features/auth/login/view/login_screen.dart';
import 'package:tabibi_app/features/auth/register/bindings/register_binding.dart';
import 'package:tabibi_app/features/auth/register/view/register_scrren.dart';
import 'package:tabibi_app/features/auth/forgot%20password/view/forgot_password_screen.dart';
import 'package:tabibi_app/features/mainHomePage/view/main_home_page.dart';
import 'package:tabibi_app/features/onBording/bindings/on_bording_bindings.dart';
import 'package:tabibi_app/features/onBording/view/on_bording_screen.dart';
import 'package:tabibi_app/features/search/view/search_screen.dart';
import 'package:tabibi_app/features/selectSpecialty/view/select_specialty_screen.dart';
import 'package:tabibi_app/features/splash/view/splash_screen.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(
      name: AppRoutes.onBording,
      page: () => OnBordingScreen(),
      binding: OnBordingBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
      curve: Curves.bounceIn,
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterScrren(),
      binding: RegisterBinding(),
      curve: Curves.bounceIn,
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
      curve: Curves.bounceIn,
    ),
    GetPage(name: AppRoutes.mainHomePage, page: () => MainHomePage()),
    GetPage(
      name: AppRoutes.personalInformationScreen,
      page: () => PersonalInformationScreen(),
    ),
    GetPage(name: AppRoutes.searchScreen, page: () => SearchScreen()),
    GetPage(
      name: AppRoutes.selectSpecialtyScreen,
      page: () => SelectSpecialtyScreen(),
    ),
    GetPage(
      name: AppRoutes.appointmentsScreen,
      page: () => AppointmentsScreen(),
    ),
  ];
}
