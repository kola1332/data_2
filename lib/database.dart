// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:sqflite/sqflite.dart';

class Database {
  var db;

  Future<Database> create() async {
    var db = await openDatabase('my_db.db');
    await db.execute(
        'CREATE TABLE my_table (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, type TEXT)');
    return db;
  }

  Future<Database> read() async {
    if (db == null) {
      create();
    }
    var list = await db.query('my_table', columns: ['name', 'type']);
    print(list);
    return list;
  }
}
