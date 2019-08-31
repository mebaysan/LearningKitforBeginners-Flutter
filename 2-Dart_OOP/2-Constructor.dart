import '1-Classes.dart';

class Manager {
  String name;
  String lastName;
  int salary;
  Manager(String name, String lastName, int salary) {
    // bu şekilde class'ın kendi adını fonksiyon olarak yazarsak constructor oluşturmuş oluruz
    this.name = name;
    this.lastName = lastName;
    this.salary = salary;
    print("Benim adım: " +
        this.name +
        " \nSoyadım: " +
        this.lastName +
        " \nAylık maaşım : " +
        this.salary.toString());
  }
}

void main() {
  var manager = new Manager("Enes", "Baysan", 3000);
}
