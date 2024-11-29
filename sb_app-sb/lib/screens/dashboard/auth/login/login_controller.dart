import 'package:get/get.dart';

List<String> list = <String>['LMV', 'LMV2', 'LMV3', 'LMV4'];

class LoginController extends GetxController {
  final profilePic = ''.obs;
  final dropdownValue = list.first.obs;

  var isPasswordHidden = true.obs;
}
