import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/auth/signup/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignupController());
  }
}
