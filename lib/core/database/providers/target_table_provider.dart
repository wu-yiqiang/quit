import 'package:quit/core/database/providers/base_table_provider.dart';

class TargetTableProvider extends BaseTableProvider {
  final String tablename = 'target';
  // 列名
  final String columnId = "id";
  final String columnTargetName = "t_name";
  final String columnTargetDay = "t_days";
  final String columnTargetColors = "t_colors";
  final String columnTargetSoundKey = "t_sound_key";
  final String columnTargetNotificationTimes = "t_notification_time";
  final String columnTargetCreateTime = "t_createtime";
  final String columnTargetDeleteTime = "t_deletetime";
  final String columnTargetGiveUpTime = "t_giveuptime";

  @override
  String tableName() {
    return tablename;
  }

  @override
  String createTableString() {
    return '''
      CREATE TABLE $tablename (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnTargetName TEXT NOT NULL,
        $columnTargetDay INT NOT NULL,
        $columnTargetColors TEXT NOT NULL,
        $columnTargetSoundKey TEXT NOT NULL,
        $columnTargetNotificationTimes TEXT NOT NULL,
        $columnTargetCreateTime TEXT NOT NULL,
        $columnTargetDeleteTime TEXT NOT NULL,
        $columnTargetGiveUpTime TEXT NOT NULL)''';
  }
  // 插入数据
  // 查询数据
  // 更新数据
}
