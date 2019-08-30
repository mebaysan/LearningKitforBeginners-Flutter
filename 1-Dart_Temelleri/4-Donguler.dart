void main() {
  var sayac = 1;
  for (var i = 0; i < 10; i++) {
    print(sayac.toString() + ". i değeri = " + i.toString());
    sayac++;
  }
  var ogrenciler = ["Enes", "Yusuf", "Yavuz"];
  for (var ogrenci in ogrenciler) {
    // foreach gibi düşüneviliriz
    print(ogrenci);
  }
  var sayi = 2;
  while (sayi <= 10) {
    print(sayi.toString() + " 10'dan küçük");
    if (sayi == 10) {
      print(sayi.toString() + " 10'a eşit");
    }
    sayi++;
  }
  var sayi23 = 1;
  do {
    print(sayi23.toString()+ "5'den küçük");
    sayi23++;
  } while (sayi23<5);
}
