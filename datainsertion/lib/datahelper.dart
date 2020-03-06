import 'dart:io' as io;
import 'dart:async';
import 'dart:io';
import 'package:datainsertion/data.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  static Database _db;
  String tablename = 'table_name';
  String colid = 'id';
  String name = 'name';

  DatabaseHelper.internal();
  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "database_name.db");
    _db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Database get db {
    return _db;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        'CREATE TABLE $tablename ($colid INTEGER PRIMARY KEY AUTOINCREMENT,'
        '$name TEXT,');
  }

  Future<List<Map<String, dynamic>>> getNodeMapList() async {
    Database dbdata = await db;
    var result = await db.query(tablename, columns: ['$colid', '$name']);
    return result;
  }

  Future<int> insertNode(Todo note) async {
    assert(note != null);
    Database dbdata = await db;
    var result = await db.insert(tablename, note.toMap());
    return result;
  }

  Future<int> deleteNode(int id) async {
    Database dbdata = await db;
    int result = await db.rawDelete('DELETE FROM $tablename WHERE $colid=$id');
    return result;
  }
}
