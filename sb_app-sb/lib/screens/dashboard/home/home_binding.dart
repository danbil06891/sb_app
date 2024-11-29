import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
