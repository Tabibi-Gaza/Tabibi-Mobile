import 'package:get/get.dart';
import 'package:tabibi_app/features/auth/register/controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
