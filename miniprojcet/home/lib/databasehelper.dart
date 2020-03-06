import 'dart:io';
import 'dart:async';
import 'package:home/database.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:home/checkout.dart';

class DatabaseHelper {
  // static Database _databaseHelper;
  // DatabaseHelper._createInstance();

  static Database _database;
  String tablename = 'table_name';
  String colid = 'id';
  String colname = 'name';
  String colprice = 'price';
  // DatabaseHelper.internal();
  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "database_name.db");
    _database = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<Database> get db async {
    _database = await initDb();
    return _database;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        'CREATE TABLE $tablename ($colid INTEGER PRIMARY KEY AUTOINCREMENT,'
        '$colname TEXT,'
        '$colprice INTEGER');
  }

  Future<List<Map>> getNodeMapList() async {
    // var dbdata = db;
    print("inside get ");
    var dbc = await db;
    var result = await dbc
        .query(tablename, columns: ['$colid', '$colname', '$colprice']);
    print("inside get $result");
    return result;
  }

  // Future<int> insertNode(Data note) async {
  //   Database dbdata = await db;
  //   var result = await db.insert(tablename, note.toMap());
  //   return result;
  // }

  // Future<int> updateNode(Data note) async {
  //   var dbdata = await db;
  //   var result = await db.update(tablename, note.toMap(),
  //       where: '$colid=?', whereArgs: [note.toMap()]);
  //   return result;
  // }

  // Future<int> deleteNode(int id) async {
  //   Database dbdata = await db;
  //   int result = await db.rawDelete('DELETE FROM $tablename WHERE $colid=$id');
  //   return result;
  // }
}
