void main() {
  // python'dan bildiğimiz dictionary yapısı
  var sozluk = {"book": "kitap", "apple": "elma", "car": "araba"};
  print(sozluk["book"]);
  sozluk['example'] = "deneme"; // olmayan bir değeri ekleyebiliriz.
  sozluk['book'] = "değişen kitap"; // bu şekilde mevcut elamnı değişebiliriz
  var keys = sozluk.keys; // bu şekilde keylere
  var values = sozluk.values; // bu şekilde value'lere ulaşabiliriz
  var elemanSayisi = sozluk.length; // eleman sayısına ulaşabiliriz;
  sozluk.remove("apple"); // bir key vererek eleman silebiliriz
  sozluk.containsKey("book"); // sözlükte bu anahtar var mı
  sozluk.containsValue("araba"); // sözlükte bu değer var mı
  print(sozluk["book"]);
  print(keys);
  print(values);
  var sayac = 1;
  sozluk.forEach((k, v) => { // sozluk(map)'de foreach yapabiliriz
        print(sayac.toString() + ". key = " + k + " value = " + v), // alt alta kod yazarken sozluk foreach'de virgül kullanılır
        sayac++
      });
}
