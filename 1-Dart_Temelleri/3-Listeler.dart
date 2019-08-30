void main() {
  var ogrenciler = new List();
  var liste = [];
  ogrenciler.add("Enes");
  ogrenciler.add("Yusuf");
  ogrenciler.add("Yavuz");
  liste.add("Eleman1");
  liste.add("Eleman2");
  print(ogrenciler);
  print(liste);
  print(ogrenciler.firstWhere((s)=>s.contains("Y"))); // içinde y geçen ilk elemanı verir
}
