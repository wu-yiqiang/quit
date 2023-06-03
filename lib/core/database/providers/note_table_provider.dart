import 'package:quit/core/database/providers/base_table_provider.dart';

class NoteTableProvider extends BaseTableProvider {
  final String tablename = 'note';
  // 列名
  final String columnId = "id";
  final String columnTargetId = "target_id";
  final String columnNote = "note";
  final String columnCreateTime = "n_createtime";

  @override
  String tableName() {
    return tablename;
  }

  @override
  String createTableString() {
    return '''
      CREATE TABLE $tablename (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnTargetId TEXT NOT NULL,
        $columnNote TEXT NOT NULL,
        $columnCreateTime TEXT NOT NULL)''';
  }
}
