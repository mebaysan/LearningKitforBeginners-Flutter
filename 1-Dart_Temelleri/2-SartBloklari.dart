void main() {
  var degisken = 12; // var ile bütün tipleri tanımlayabiliriz
  if (degisken == int) {
    print(degisken.toString() + " sayıdır");
  } else if (degisken == bool) {
    print(degisken.toString() + " boolean bir değerdir");
  } else {
    print(degisken.toString() + " sayı değildir");
  }

  var not = "A";
  switch (not) {
    case "A":
      print(not + " geçerli");
      break;
    case "B":
      print(not + "geçersiz");
      break;
    default:
      print("Not gir");
  }
}
