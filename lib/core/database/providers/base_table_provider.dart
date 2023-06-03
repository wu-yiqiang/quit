import 'package:quit/core/database/sql_manager.dart';
import 'package:sqflite/sqlite_api.dart';

abstract class BaseTableProvider {
  String tableName();
  String createTableString();

  // 获取数据库对象
  Future<Database?> getDatebase() async {
    bool isTableExist = await SqlManager.isTableExists(tableName());
    if (!isTableExist) {
      // 数据库不存在则创建
      Database? db = await SqlManager.getCurrentDataBase();
      await db?.execute(createTableString());
      return db!;
    } else {
      return await SqlManager?.getCurrentDataBase();
    }
  }

  // 创建表
  Future<void> createTable() async {
    bool isTableExist = await SqlManager.isTableExists(tableName());
    if (!isTableExist) {
      // 数据库不存在则创建
      Database? db = await SqlManager.getCurrentDataBase();
      await db?.execute(createTableString());
    }
  }
}
