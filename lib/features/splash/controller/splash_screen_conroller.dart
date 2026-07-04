import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class SplashScreenConroller extends GetxController {
  @override
  void onInit() {
    onTime();
    super.onInit();
  }

  void onTime() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.onBording);
    });
  }
}
