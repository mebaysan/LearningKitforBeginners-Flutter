import 'dart:math';
import 'dart:async';

main(List<String> args) {
  // Ternary
  bool boolean = false;
  boolean ? print("naber") : print("sanane");
  // ------------------Ternary----------------------------

  // arrow func
  int topla(sayi1, sayi2) => sayi1 + sayi2;
  // eğer fonksiyon tek satır ise arrow func olarak yazabiliriz
  print(topla(4, 5));
  // -------------------------arrow func-------------------------

  // Method Parametreler
  String selamla(ad, [soyad]) {
    // koşeli parantez içine alınan parametre(ler) verilmek zorunda değildir
    if (soyad != null) print("Merhaba $ad $soyad");
    if (soyad == null) print("Merhaba $ad");
  }

  selamla("Enes");
  selamla("Enes", "Baysan");
  // ---------------------Method Parametreler--------------------

  // Method Parametreler 2
  String tokalas(ad, {soyad, lakap}) {
    // süslü parantez içine alınan parametre(ler) verilmek zorunda değildir. fakat verilirse hangi parametreye hangi değerin verildiği belirtilmelidir.
    if (soyad != null && lakap != null) print("Tokalaş $ad $soyad $lakap");
    if (soyad == null && lakap != null) print("Tokalaş $ad $lakap");
    if (soyad != null && lakap == null) print("Tokalaş $ad $soyad");
  }

  tokalas("Enes", soyad: "Baysan");
  tokalas("Enes", lakap: "Adam", soyad: "Baysan");
  tokalas("Enes");

  // -----------------Method Parametreler 2----------------

  // SET'ler
  // setler içindeki elemanlar unique'dir. 1 elemandan bir tane daha olamaz
  Set<String> isimler = Set();
  isimler.add("enes");
  isimler.add("ali");
  isimler.add("hasan");
  isimler.add("enes"); // tekrar enes'i eklemeyecek
  print(isimler);
  // ------------------ SET'ler -------------------------

  // MAP'ler
  Map<String, String> kelimeler =
      Map(); // string'e string veri saklayacağız dedik
  kelimeler['book'] = 'kitap';
  kelimeler['car'] = 'araba';
  print(kelimeler['car']);

  // ------------------MAP'ler---------------------------

  // LAMBDA
  var f1 = (s1, s2) {
    print("$s1 + $s2 = " + (s1 + s2).toString());
  };
  f1(2, 3);
  //-------------------LAMBDA-----------------------------

  // Higher Order Functions
  // fonksiyonumuz parametre olarak fonksiyon alıyorsa veya return olarak fonksiyon döndürüyorsa higher order fonksiyonudur
  //----------------Higher Order Functions------------------

  // Lexical Closure
  String firstName = "Enes";
  Function getMyFirstName() {
    // normalde yukardaki değişkene ulaşamazdık fakat bu tip fonksiyon ile dışardaki değişkenlere müdahale edebiliriz
    firstName = "Baysan";
    print("$firstName");
  }

  getMyFirstName();
  //----------------------Lexical Closure--------------------

// List.generate ve List.map
  //List<int> ogrenciNumaralari = List.generate(30, (index) => index);
  int rastgeleOlustur() {
    int olusanSayi = Random().nextInt(30);
    if (olusanSayi != 0)
      return olusanSayi;
    else
      return rastgeleOlustur();
  }

  List<int> ogrenciNumaralari = List.generate(
      30,
      (index) =>
          rastgeleOlustur()); // ilk parametre eleman sayısı eleman değerleri(sırasıyla)
  ogrenciNumaralari.forEach((index) => print("Öğrenci numarası = $index"));
  List<Ogrenci> tumOgrenciler = ogrenciNumaralari.map((ogrNo) {
    return Ogrenci("Ogrenci Adı $ogrNo ", ogrNo);
  }).toList();
  tumOgrenciler.forEach((ogrenci) => print("Oğrenci adı " + ogrenci.ad));
//---------------------------------List.generate ve List.map------------------------------------

//Asenkron İşlemler
  Future<String> dosyaIndir() {
    print("Dosya indirme işlemi başladı");
    Future<String> sonuc =
        Future.delayed(Duration(seconds: 10), () => "indirilen dosya içeriği");
    print("Dosya indirme işlemi bitti");
  }
  dosyaIcerikGoster() async {
    print("Dosya içeriği gösterilecek");
    String dosyaIcerigi = await dosyaIndir();
    print("DOSYA İÇERİĞİ = $dosyaIcerigi");
  }
  dosyaIcerikGoster();
//-------------------------------------Asenkron İşlemler---------------------------------------
}

class Ogrenci {
  String ad;
  int no;
  Ogrenci(this.ad,
      this.no); // constructor. gelen parametreler sırasıyla ad ve no olacak sende bunları bu nesneye ata dedik
}
