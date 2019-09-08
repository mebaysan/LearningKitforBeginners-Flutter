import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.orange, accentColor: Colors.cyan),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Temeller İçin Uygulama",
              style: TextStyle(color: Colors.red),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => print("FBA TIKLANDI"),
            child: Icon(
              Icons.accessibility,
              color: Colors.red,
            ),
          ),
          body: Column(
            children: <Widget>[
              Text(
                "Resim ve buton türleri",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/flutter.jpg",
                          width: 75,
                          height: 75,
                        ),
                        Text(
                            "Asset Image"), // pubspec yaml içerisinde assets kısmında image'ın yerini göstermemiz gereklidir
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                            "https://sanatlibiblog.com/wp-content/uploads/2019/02/Svetlana-Eremeeva_resimleri_ANA_660_330_sanatlibiblog.jpg"), // direk resmin url'ini verince flutter bunu bizim için getirecek
                        Text(
                            "Network Image"), // internetten çekerken kullanacağımız image tipi
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          //child: Text("Enes Baysan"), // sadece yazı göstereceksek child text kullanmalı
                          backgroundImage:AssetImage("assets/images/flutter.jpg") , // resim göstermek istiyorsak backgroundimage kullanmalıyız
                          radius: 30,
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.orange,
                        ),
                        Text(
                            "Circle Avatar"), // verdiğimiz resmin arkasına yuvarlak bir şekil çizecek. genelde profil resimleri için kullanılır
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
