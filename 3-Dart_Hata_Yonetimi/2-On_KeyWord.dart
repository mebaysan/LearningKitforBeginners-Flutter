void main() {
  void main() {
    int a = 150;
    int b = 0;
    int result;
    try {
      result = a ~/ b;
    } on IntegerDivisionByZeroException catch (e) {
      // aslında diğer dillerden bildiğimiz klasik yapı. Duruma özel hata yakalamaya yarar.
      print("Sayı 0'a bölünemez");
    }
  }
}
