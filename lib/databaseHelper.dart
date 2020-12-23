import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class databaseHelper {

  static final _dbName = 'requestsDB.db';
  static final _dbVersion = 1;
  static final _tableName = "requests";

  static final _columnID = "_id";
  static final _columnName = "name";
  static final _columnNational = "nationalid";
  static final _columnAge = "age";
  static final _columnPhoneNo = "phoneNo";

  databaseHelper._privateConstructor();
  static final databaseHelper instance = databaseHelper._privateConstructor();

  static Database _database;
  Future<Database> get database async{
    if (_database != null){return _database;}

    _database = await _initiateDatabase();

  }

  _initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,_dbName);
    await openDatabase(path, version: _dbVersion, onCreate: _onCreate);


  }
  Future _onCreate(Database db, int version){
    db.execute(
      '''
      CREATE TABLE $_tableName (
      $_columnID INTEGER PRIMARY KEY,
      $_columnName TEXT NOT NULL,
      $_columnNational TEXT NOT NULL,
      $_columnAge INTEGER NOT NULL,
      $_columnPhoneNo TEXT NOT NULL)
      
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
    int id = row[_columnID];
    return await db.update(_tableName, row, where: '$_columnID = ?', whereArgs: [id]);
  }

  Future<int> delete(Map<String,dynamic> row) async {
    Database db = await instance.database;
    int id = row[_columnID];
    return await db.delete(_tableName, where: '$_columnID = ?', whereArgs: [id]);
  }

}