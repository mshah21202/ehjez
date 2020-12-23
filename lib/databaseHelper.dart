import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class databaseHelper {

  static final _dbName = 'requestsDB.db';
  static final _dbVersion = 1;
  static final _tableName = "requests";

  static final columnID = "_id";
  static final columnName = "name";
  static final columnNational = "nationalid";
  static final columnAge = "age";
  static final columnPhoneNo = "phoneNo";
  static final columnNationality = "Nationality";
  static final columnQ1 = "Question1";
  static final columnQ2 = "Question2";
  static final columnQ3 = "Question3";

  databaseHelper._privateConstructor();
  static final databaseHelper instance = databaseHelper._privateConstructor();

  static Database _database;
  Future<Database> get database async{
    if (_database != null){return _database;}

    _database = await _initiateDatabase();
    return _database;
  }

  _initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,_dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);


  }
  Future _onCreate(Database db, int version){
    db.execute(
      '''
      CREATE TABLE $_tableName (
      $columnID INTEGER PRIMARY KEY,
      $columnName TEXT NOT NULL,
      $columnNational TEXT NOT NULL,
      $columnAge INTEGER NOT NULL,
      $columnPhoneNo TEXT NOT NULL,
      $columnNationality INTEGER NOT NULL,
      $columnQ1 INTEGER,
      $columnQ2 INTEGER,
      $columnQ3 INTEGER )
      '''
    );

  }

  Future<int> insert(Map<String,dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableName, row);
  }

  Future<List<Map<String,dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(_tableName);
  }

  Future<int> update(Map<String,dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnID];
    return await db.update(_tableName, row, where: '$columnID = ?', whereArgs: [id]);
  }

  Future<int> delete(Map<String,dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnID];
    return await db.delete(_tableName, where: '$columnID = ?', whereArgs: [id]);
  }

}