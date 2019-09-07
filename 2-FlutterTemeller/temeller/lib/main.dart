import "package:flutter/material.dart";

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
      // sağ üstte gözüken debug yazısı kalksın mı
      // runApp içine verilen widgeti çalıştırır
      home: new Scaffold(
        // uygulamamız için iskelet diyebiliriz
        appBar: new AppBar(
          // scaffold widghetin appBar fieldına appBar  widgeti yolluyoruz
          // uygulamanın üst kısmında gözüken yer
          title: Text(
            "Başlık",
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ), // appbar widget'in title fieldına Text widgeti yolluyoruz
        ),
        floatingActionButton: new FloatingActionButton(
          // sağda alt tarafta gözüken button
          onPressed: () {
            print("FBA Tıklandı!");
          }, // butona tıklayınca ne olacğı
          child: new Icon(
            // floatingactingbutton widget'a child parametresi verdik ve buna da Icon parametresi verdik
            Icons.access_alarm,
            color: Colors.white,
          ),
        ),
        body: new Container(
          color: Colors.grey.shade500,
          // alignment: Alignment(0, 0),
          // child: Text(
          //   "Flutter Çok İyi",
          //   style: TextStyle(fontSize: 24),
          // ),
          // margin: EdgeInsets.all(10.0), // EdgeInsets.only(top:10.0,down:5.0)
          // padding: EdgeInsets.only(left: 30),
          child: Row(
            // buraya row değilde Column deseydik elemanlar soldan sağa değilde yukardan aşağı sıralancaktı
            mainAxisSize: MainAxisSize.max, // sadece itemler kadar yer kaplar
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // ilgili satırdaki dağılımı ayarlar
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Icon(
                    Icons.accessibility_new,
                  ),
                  color: Colors.red.shade700,
                ),
                flex: 2,
              ),
              Expanded(
                // satıra sığmazsa kendisi otomatik olarak sığdırmayı sağlar
                child: Container(
                  child: Icon(
                    Icons.accessibility_new,
                  ),
                  color: Colors.yellow.shade700,
                ),
                flex:
                    4, // flex -> bölgeyi toplam flexler kadarbölr ve her flex'in değerine göre widget'larra yer ayırır
              ),
              Expanded(
                child: Container(
                  child: Icon(
                    Icons.accessibility_new,
                  ),
                  color: Colors.blue.shade700,
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  child: Icon(
                    Icons.accessibility_new,
                  ),
                  color: Colors.green.shade700,
                ),
                flex: 4,
              ),
            ],
          ),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
  );
}
