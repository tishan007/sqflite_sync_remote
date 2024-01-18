import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_sync/data/model/employee_model.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "Employees.db";

  static Future<Database> _getDB() async {
    String dbPath = join(await getDatabasesPath(), _dbName);
    var database = await openDatabase(dbPath, version: _version, onCreate: createDb);
    return database;
  }

  static Future<void> createDb(Database db, int version) async {
    //create employee table
    await db.execute(
        'CREATE TABLE IF NOT EXISTS "employee" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,"name" TEXT NOT NULL, "designation" TEXT NOT NULL);');

    /*await db.execute(
        'CREATE TABLE IF NOT EXISTS "logBaseTable" ("LOCALID" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL , "OPTIMELOCAL" TEXT, "MODUL" TEXT, "ISLEMOLAY" TEXT, "TEXT" TEXT, "DEVICEID" TEXT, "VERSIONINFO" TEXT, "GONDERILDI" INTEGER, "DENEMECOUNT" INTEGER);');

    await db.execute(
        'CREATE TABLE IF NOT EXISTS "lastNotificationDateTable" ("Date" TEXT);');*/
  }

  static Future<int> addEmployee(EmployeeModel employee) async {
    final db = await _getDB();
    return await db.insert("employee", employee.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateEmployee(EmployeeModel employee) async {
    final db = await _getDB();
    return await db.update("employee", employee.toJson(),
        where: 'id = ?',
        whereArgs: [employee.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteEmployee(EmployeeModel employee) async {
    final db = await _getDB();
    return await db.delete(
      "employee",
      where: 'id = ?',
      whereArgs: [employee.id],
    );
  }

  static Future<int> deleteAllEmployee() async {
    final db = await _getDB();
    return await db.delete(
      "employee",
    );
  }

  static Future<List<EmployeeModel>?> getAllEmployees() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("employee");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(maps.length, (index) => EmployeeModel.fromJson(maps[index]));
  }

}
