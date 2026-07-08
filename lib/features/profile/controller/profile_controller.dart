import 'package:get/get.dart';
import 'package:tabibi_app/core/models/user_model.dart';
import 'package:tabibi_app/core/routes/app_routes.dart';

class ProfileController extends GetxController {
  var notification = true.obs;

  final user = UserModel(
    name: "سارة أحمد",
    email: "sara.ahmed@example.com",
    image: "https://i.pravatar.cc/300",
  );

  void changeNotification(bool value) {
    notification.value = value;
  }

  void goToPersonalInformation() {
    Get.toNamed(AppRoutes.PersonalInformationScreen);
  }

  void logout() {
    Get.offAllNamed(AppRoutes.login);
  }
}
