import 'package:quit/utils/util_object.dart';
import 'package:quit/utils/date_time.dart';
class Note {
  int? id;
  int? targetId;
  String? note;
  DateTime? createTime;
  Note clone() {
    return Note()
      ..id = id
      ..targetId = targetId
      ..note = note
      ..createTime = createTime;
  }
  static Note? targetFormMap(Map<String, dynamic>map) {
    if (ObjectUtil.isEmpty(map)) return null;
    // 创建时间解析
    String createTimeString = map['n_createtime'];
    DateTime? createTime= stringToDateTime(createTimeString);
    return Note()
      ..id = map['id'] as int
      ..targetId = map['target_id'] as int
      ..note = map['note'] as String
      ..createTime =createTime
    ;
  }
}