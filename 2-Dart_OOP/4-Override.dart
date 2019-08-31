class Person {
  void Selamla(String name) {
    print("Naber " + name);
  }
}

class Student extends Person {
  @override
  void Selamla(String name) {
    // bu şekilde inherit ettiğimiz classtaki fonksiyonları tekrardan yazabiliriz. Bu olaya override denir.
    print("Selamunaleyküm " + name);
  }
}

void main() {
  var student = new Student();
  student.Selamla("Baysan");
}
