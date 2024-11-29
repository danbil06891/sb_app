import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/test/test_controller.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TestController());
  }
}
