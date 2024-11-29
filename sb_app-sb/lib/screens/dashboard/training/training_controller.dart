import 'package:get/get.dart';
import 'package:sbapp/models/training_model.dart';
import 'package:sbapp/repo/train_repo.dart';

class TrainingController extends GetxController {
  List<TrainingModel> trainList = [];
  var attendanceList = [
    {
      "attendance": "Present",
    },
    {
      "attendance": "Absent",
    },
    {
      "attendance": "Instructor Absent",
    },
    {
      "attendance": "Holiday",
    },
    {
      "attendance": "N/A",
    },
  ];

  int? selectedIndex = 3;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    trainList =
        alldata().map<TrainingModel>((v) => TrainingModel.fromJson(v)).toList();
  }
}
