import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/fees/fee_controller.dart';

class FeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FeeController());
  }
}
