import 'package:get/get.dart';
import 'package:tabibi_app/core/models/user.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class ProfileController extends GetxController {
  var notification = true.obs;

  // final user = User(
  //   name: "سارة أحمد",
  //   email: "sara.ahmed@example.com",
  //   image: "https://i.pravatar.cc/300",
  // );

  void changeNotification(bool value) {
    notification.value = value;
  }

  void goToPersonalInformation() {
    Get.toNamed(AppRoutes.personalInformationScreen);
  }

  void logout() {
    Get.offAllNamed(AppRoutes.login);
  }
}
