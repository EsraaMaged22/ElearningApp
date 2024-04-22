import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDb {
  static Database? _database;

  Future<Database?> get database async {
    if (_database == null) {
      _database = await init();
      return _database;
    } else {
      return _database;
    }
  }

  init() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'movies.db');
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );
    return database;
  }

  onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE 'favourites' (id TEXT , title TEXT , image TEXT)");
  }

  Future<List<Map>> getData() async {
    Database? myDatabase = await database;
    List<Map<String, dynamic>> response =
    await myDatabase!.rawQuery("SELECT * FROM 'favourites'");
    return response;
  }

  Future<void> insertData({
    required String id,
    required String title,
    required String image,
  }) async {
    Database? myDatabase = await database;
    await myDatabase!.rawInsert(
        "INSERT INTO 'favourites' ('id' ,'title', 'image') VALUES( '$id' , '$title' , '$image')");
  }

  Future<int> deleteData({
    required String id,
  }) async {
    Database? myDatabase = await database;
    int bookId = await myDatabase!
        .rawDelete("DELETE FROM 'favourites' WHERE id = ?", [id]);
    return bookId;
  }
}