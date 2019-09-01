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
    if (_db == null) { // eğer veritabanı null ise veritabanını oluştur
      _db = await initializeDb();
      return _db;
    }
    return _db; // eğer veritabanı varsa veri tabanını döndür
  }
}
