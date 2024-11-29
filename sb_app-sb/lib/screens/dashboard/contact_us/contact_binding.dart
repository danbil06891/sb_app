import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/contact_us/contact_controller.dart';

class ContactBindng extends Bindings {
  @override
  void dependencies() {
    Get.put(ContactController());
  }
}
