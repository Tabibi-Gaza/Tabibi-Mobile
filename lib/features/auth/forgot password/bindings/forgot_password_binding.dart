import 'package:get/get.dart';
import 'package:tabibi_app/features/auth/forgot%20password/controller/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
