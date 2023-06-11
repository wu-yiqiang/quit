import 'package:flutter/material.dart';
import 'package:quit/utils/util_object.dart';
import 'package:quit/utils/date_time.dart';
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
      ..targetStatus = targetStatus;
  }
  // 将数据库目标表中查询的目标map转换为Target类对象
static Target? targetFormMap(Map<String, dynamic>map) {
    if (ObjectUtil.isEmpty(map)) return null;
    // 目标推送时间段解析
    List<TimeOfDay>? times;
    String? notificationTimeString = map['t_notification_time'];
    if (!ObjectUtil.isEmpty(notificationTimeString)) {
      List<String> items = notificationTimeString!.split("!");
      if (!ObjectUtil.isEmpty(items)) {
        times = [];
        items.forEach((element) {
          TimeOfDay? timeOfDay = stringToTimeOfDay(element);
          if (timeOfDay != null) {
            times!.add(timeOfDay);
          }
        });
      }
    }
    // 创建时间解析
    String createTimeString = map['t_createtime'];
    DateTime? createTime= stringToDateTime(createTimeString);
    // 判断目标状态
    TargetStatus? targetStatus;
    DateTime? giveUpDate;
    if(map["t_giveuptime"] != null) {
      targetStatus = TargetStatus.giveuped;
      String time = map['t_giveuptime'];
      giveUpDate = stringToDateTime(time);
    } else {
      // 进行中或者已完成
      DateTime complatedTime = createTime!.add(Duration(days: map['t_days'] as int));
      if (DateTime.now().isBefore(complatedTime)) {
        targetStatus = TargetStatus.processing;
      } else {
        targetStatus = TargetStatus.completed;
      }
    }
    return Target()
      ..id = map['id'] as int
      ..name = map['t_name'] as String
      ..targetDays = map['t_days'] as int
      ..targetColors = map['t_colors'] as Color
      ..soundKey = map['t_sound_key'] as String
      ..notificationTimes = times
      ..createTime = createTime
      ..giveupTime = giveUpDate
      ..targetStatus = targetStatus
    ;
}
}
