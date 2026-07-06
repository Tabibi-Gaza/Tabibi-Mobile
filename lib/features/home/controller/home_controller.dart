import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tabibi_app/core/Temporary%20lists/home_dept_clip_list.dart';
import 'package:tabibi_app/features/home/models/home_dept_clip_model.dart';

class HomeController extends GetxController {
  bool isTappedOnSearhTextField = false;
  List<HomeDeptClipModel> listSearchDeptClipModel = [];

  void changeSelected(int index) {
    for (int i = 0; i < HomeDeptClipList.homeDeptClipList.length; i++) {
      HomeDeptClipList.homeDeptClipList[i].selected = false;
    }
    HomeDeptClipList.homeDeptClipList[index].selected = true;
    update();
  }

  void onTapOnSearchTextField() {
    isTappedOnSearhTextField = true;
    update();
  }

  void onTapOutsideSearchTextField() {
    isTappedOnSearhTextField = false;
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    update();
  }

  void onSearchTextFieldChange(String value) {
    List<HomeDeptClipModel> list = HomeDeptClipList.homeDeptClipList
        .where(
          (element) => element.name.toLowerCase().contains(value.toLowerCase()),
        )
        .toList();
    listSearchDeptClipModel.clear();
    listSearchDeptClipModel.addAll(list);

    if (isTappedOnSearhTextField == false) {
      value = "";
    }

    update();
  }
}
