void main() {
  void main() {
    int a = 150;
    int b = 0;
    int result;
    try {
      result = a ~/ b;
    } on IntegerDivisionByZeroException catch (e) {
      print("Sayı 0'a bölünemez");
    } catch (e) {
      print("Sıfıra bölünme hatası dışındaki bir hata");
    } finally {
      // finally bloğu hata olsa da olmasa da çalışır
      print("Burası ne olursa olsun çalışacak");
    }
  }
}
