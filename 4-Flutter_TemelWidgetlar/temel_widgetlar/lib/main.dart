import 'package:flutter/material.dart'; // standart flutter dosyasını dahil ediyoruz

// main.dart dart uygulamalarımızın ana dosyasıdır.
// new Center() = Center()
void main() {
  runApp(new HelloWorldApp());
}

// Kendi Widgetimizi yazalım - Stateless Widget
class HelloWorldApp extends StatelessWidget {
  // StatelessWidget classtan inherit etmemiz lazım
  @override
  Widget build(BuildContext context) {
    // build methodunu override etmeliyiz.
    return new MaterialApp(
        // ve bize bir değer return etmeli.
        // uygulama ile ilgili ana Widget
        title: "My first App",
        home: new Scaffold(
          // scaffold widget sayesinde uygulamamızı 2'ye bölebiliriz gibi düşünebiliriz. (header - footer)
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              "Uygulama Bar Başlığı",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20.0,
              ),
            ),
          ),
          body: new MainPage(),
        ));
  }
}

// kendimize bir anasayfa widgeti yazdık ve bunu 30. satırda kullandık.

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.red,
        child: new Center(
          // Center -> merkez widget'i
          // runApp() -> widget başlatmaya yarar
          child: Text(
            // Center widget altına bir sub widget ekliyoruz.
            "Merhaba Flutter Dünyası\n"+selamla(),
            textDirection: TextDirection.ltr,
            style: TextStyle(
              // bu şekilde widget'larımıza style verebiliriz.
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
        ));
  }
}

String selamla() {
  DateTime now = DateTime.now();
  int saat = now.hour;
  if (saat <= 12) {
    return "Günaydın";
  } else {
    return "İyi Akşamlar";
  }
}
