import 'package:get/get.dart';
import 'package:sbapp/models/training_model.dart';
import 'package:sbapp/repo/train_repo.dart';

class FeeController extends GetxController {
  List<TrainingModel> trainList = [];
  var paymentList = [
    {
      "payment": "Paid",
    },
    {
      "payment": "Unpaid",
    },
  ];

  int? selectedIndex = 3;
  @override
  void onInit() {
    super.onInit();
    trainList =
        alldata().map<TrainingModel>((v) => TrainingModel.fromJson(v)).toList();
  }
}
