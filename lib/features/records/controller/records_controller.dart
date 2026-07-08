import 'package:get/get.dart';

class RecordsController extends GetxController {
  int selectedTabButton = 0;

  void toggleTabButton(int index) {
    selectedTabButton = index;
    update();
  }
  
}