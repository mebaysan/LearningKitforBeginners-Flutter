class Person {
  void Selamla(String name) {
    print("Naber " + name);
  }
}

class Student extends Person { // extends ile Person class'tan inherit ettik
  void DersCalis() {
    print("Ders çalışıyorum");
  }
}

void main() {
  var student = new Student();
  student.Selamla("Baysan");
}
