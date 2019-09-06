import 'package:sqflite/sqflite.dart'; // sqflite vs. gerekli kütüphaneleri import ediyoruz
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:etrade/models/product.dart';

class DbHelper {
  // tablo ve kolon isimlerini kendimiz belirledik
  String tbl_product = "Products";
  String col_id = "product_id";
  String col_name = "product_name";
  String col_price = "product_price";
  String col_description = "product_description";
  static final DbHelper _dbHelper = DbHelper
      ._internal(); // final keyword -> nesneyi sadece READONLY oluşturur. ona bir değer atayamayız.

  DbHelper._internal(); // class'ı statik yapmak için

  factory DbHelper() {
    // factory -> kullanıcıya bu vasıta ile her çağırımda aynı static helper instance dönecek.
    return _dbHelper;
  }

  static Database _db; // database nesnesi otomatik olarak sqflite'dan gelir.

  Future<Database> get db async {
    // operasyon bittiğinde ne yapacağımızı anlatırız. ASENKRON bir yapı.
    if (_db == null) {
      // eğer veritabanı null ise veritabanını oluştur
      _db = await initializeDb();
      return _db;
    }
    return _db; // eğer veritabanı varsa veri tabanını döndür
  }

  Future<Database> initializeDb() async {
    // veri tabanımızı oluşturacak method
    Directory directory =
        await getApplicationDocumentsDirectory(); // projenin çalıştığı dizini verir bize
    String path = directory.path +
        "etrade.db"; // çalıştığı dizin altında etrade.db diye bir veritabanı oluşturur.
    var dbEtrade = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbEtrade;
  }

  void _createDb(Database db, int version) async {
    // veritabanını oluşturuyor
    await db.execute(
        "create table $tbl_product($col_id integer primarykey, $col_name text, $col_description text , $col_price integer)");
  }

  Future<int> insert(Product product) async {
    Database db = await this.db;
    var result = await db.insert(tbl_product, product.toMap());
    return result;
  }

  Future<int> update(Product product) async {
    Database db = await this.db;
    var result = await db.update(tbl_product, product.toMap(),
        where: "$col_id =?", whereArgs: [product.id]);
    return result;
  }

  Future<int> delete(int id) async {
    Database db = await this.db;
    var result = db.rawDelete("delete from $tbl_product where $col_id = $id");
    return result;
  }

  Future<List> getProducts() async {
    Database db = await this.db;
    var result = await db.rawQuery("select * from $tbl_product");
    return result;
  }
}
