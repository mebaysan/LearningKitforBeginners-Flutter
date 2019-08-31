import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment
                .topLeft, // bizim için koordinatları belirler. Nerede gözükeceği vs.
            margin: EdgeInsets.only(
                top:
                    30.0), // margin kendini bir üst widget'tan geri çeker, padding bir alt widgeti aşağı iter. EdgeInsets.all -> uygulanan margin veya paddingin her kenara uygulanmasını sağlar
            //EdgeInsets.only(left: 50.0) -> bu da sadece verilen bölgede uygulanmasını sağlar
            color: Colors.red,
            child: Column(
              // kolon ekledik
              children: <Widget>[
                // kolonunda childrenları olabilir
                Row(
                  textDirection:
                      TextDirection.ltr, // satırdaki dizilişi belirtmemiz gerek
                  // child olarak tek bir row verebiliriz fakat rowlara children olarak bir çok widget verebiliriz
                  children: <Widget>[
                    Text(
                      "Laptop",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          decoration: TextDecoration.none),
                    ),
                    Expanded(
                        // expanded ekrana sığmayan kısmı alt satıra indirir
                        child: Text(
                      "16GB ram 128GB SSD Intel I7",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          decoration: TextDecoration.none),
                    )),
                  ],
                ),
                Row(
                  textDirection:
                      TextDirection.ltr, // satırdaki dizilişi belirtmemiz gerek
                  // child olarak tek bir row verebiliriz fakat rowlara children olarak bir çok widget verebiliriz
                  children: <Widget>[
                    Text(
                      "Keyboard",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          decoration: TextDecoration.none),
                    ),
                    Expanded(
                        // expanded ekrana sığmayan kısmı alt satıra indirir
                        child: Text(
                      "Mekanik Gaming Led Ligth",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          decoration: TextDecoration.none),
                    )),
                  ],
                ),
                Directionality(
                  // flutter bizden bu butonun yazı yönünü istiyor
                  child: OrderButton(), // child olarak butonu verdik
                  textDirection: TextDirection
                      .ltr, // yazı yönü oalrak left to right verdik
                )
              ],
            )));
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Ödeme Sayfası"), // butonun yazısı
        elevation: 5.0, // butonun yüksekliği
        onPressed: () {
          // butona basılınca ne olacağı.
          order(context); // basınca order fonksiyonunu çalıştır dedik
        },
      ),
    );
    return button;
  }

  order(BuildContext context) {
    // butona basılınca ne olacağını belirlemek için bir fonksiyon yazıyoruz. Fonksiyon parametre olarak context'i alıyor.
    var alert = AlertDialog(
      // alert dialog widgeti oluşturuyoruz
      title: Text("Ödeme Yap"), // title ve contentini belirliyoruz
      content: Text("Ödeme Sayfasına Gideceğim"),
    );
    showDialog(
        // hazır fonksiyondur yazdığımız alerti göstermemizi sağlar. context olarak parametre olarak gelen context'i vermemiz gerekir.
        context: context,
        builder: (BuildContext context) =>
            alert); // context üzerinde alert'i göstermemizi sağlayacak
  }
}
