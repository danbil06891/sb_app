import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/main_view/main_view_controller.dart';

class MainViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainViewController());
  }
}
