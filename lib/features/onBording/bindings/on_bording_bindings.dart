import 'package:tabibi_app/features/onBording/controller/on_bording_controller.dart';
import 'package:get/get.dart';

class OnBordingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBordingController());
  }
}
