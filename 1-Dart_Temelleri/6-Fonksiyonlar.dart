void main() {
  var toplam = topla(12, 3);
  print("Toplam = " + toplam.toString());
  var sayi = topla2(2);
  print(sayi.toString());
  var sayi3 = topla3(12, b: 15, c: 67); // named parametrelerde bu şekilde parametrelerin hangilerine karşılık geldiğini belirtmek gerek
  print(sayi3.toString());
}




// Fonksiyon
int topla(int a, int b) {
  // bildiğimiz fonksiyonlar
  return a + b;
}





// Optional Parameters
int topla2(a, [b, c]) {
  // a'yı göndermek zorunlu, b ve c'yi göndermek opsiyonel oldu
  if (b == null) {
    return a;
  }
  if (c == null) {
    return a + b;
  }
  if (b == null && c == null) {
    return a;
  }
  return a + b + c;
}





// Named Parameters
int topla3(a, {b, c}) {
  if (b == null) {
    return a;
  }
  if (c == null) {
    return a + b;
  }
  if (b == null && c == null) {
    return a;
  }
  return a + b + c;
}
