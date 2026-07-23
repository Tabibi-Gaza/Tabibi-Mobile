import 'package:get/get.dart';
import 'package:tabibi_app/core/Temporary lists/departments_list.dart';
import 'package:tabibi_app/core/models/department_model.dart';

class AllMedicalDepartmentsController extends GetxController {
  List<DepartmentModel> departments = Departments.departments;
  
  void onDepartmentTap(int index) {
    // TODO: navigate to doctors list for selected department
  }
}
