import 'package:flutter/material.dart';

enum TargetStatus {
  processing, // 进行中
  completed,
  giveuped,
}

class Target {
  int? id;
  String? name;
  String? descript;
  int? targetDays;
  Color? targetColors;
  String? soundKey;
  List<TimeOfDay>? notificationTimes;
  DateTime? createTime;
  DateTime? giveupTime;
  TargetStatus? targetStatus;
  Target clone() {
    return Target()
      ..id = id
      ..name = name
      ..descript = descript
      ..targetDays = targetDays
      ..targetColors = targetColors
      ..soundKey = soundKey
      ..notificationTimes = notificationTimes
      ..createTime = createTime
      ..giveupTime = giveupTime
      ..targetStatus = targetStatus
  }
}
