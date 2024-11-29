import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/location/location_controller.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LocationController());
  }
}
