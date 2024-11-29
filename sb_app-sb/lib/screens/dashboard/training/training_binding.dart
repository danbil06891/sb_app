import 'package:get/get.dart';
import 'package:sbapp/screens/dashboard/training/training_controller.dart';

class TrainingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TrainingController());
  }
}
