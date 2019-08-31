class Person {
  void Selamla(String name) {
    print("Naber " + name);
  }
}

class Student extends Person {
  @override
  void Selamla(String name) {
    print("Selamunaleyküm " + name);
    super.Selamla(name); // -> super kelimesi sayesinde burada inherit aldığımız sınıfın methodu çalışır fakat bir öncesinde üstteki kod bloğu çalışır
  }
}

void main() {
  var student = new Student();
  student.Selamla("Baysan");
}
