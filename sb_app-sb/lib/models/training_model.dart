class TrainingModel {
  String? attendance;
  String? date;
  String? time;
  String? branchName;
  TrainingModel({this.attendance, this.date, this.time, this.branchName});

  TrainingModel.fromJson(Map<String, dynamic> json)
      : attendance = json['attendance'],
        date = json['date'],
        time = json['time'],
        branchName = json['branchName'];

  Map<String, dynamic> toJson() => {
        'attendance': attendance,
        'date': date,
        'time': time,
        'branchName': branchName,
      };
}
