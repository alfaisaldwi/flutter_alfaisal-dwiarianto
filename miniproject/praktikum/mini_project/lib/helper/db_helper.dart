import 'package:mini_project/models/saveModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initilizeDb();
    return _database;
  }

  final String _tableName = 'weather';

  Future<Database> _initilizeDb() async {
    var db = openDatabase(join(await getDatabasesPath(), 'task_db.db'),
        onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE $_tableName(id INTEGER PRIMARY KEY, cityName TEXT)''',
      );
    }, version: 1);
    return db;
  }

  Future<void> insertTask(SaveModel saveModel) async {
    final Database db = await database;
    await db.insert(_tableName, saveModel.toMap());
  }

  Future<List<SaveModel>> getTask() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);
    return results.map((e) => SaveModel.fromMap(e)).toList();
  }

  Future<SaveModel> getTaskById(int id) async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    return results.map((e) => SaveModel.fromMap(e)).first;
  }

  Future<void> updateTask(SaveModel saveModel) async {
    final db = await database;
    await db.update(_tableName, saveModel.toMap(),
        where: 'id = ?', whereArgs: [saveModel.id]);
  }

  Future<void> deleteTask(int id) async {
    final db = await database;
    await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
