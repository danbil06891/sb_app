import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/auth/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
