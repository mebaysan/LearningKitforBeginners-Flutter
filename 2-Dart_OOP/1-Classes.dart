class CustomerManager {
  String name;
  String lastName;
  int salary;
  void Save() {
    print("Müşteri Kaydedildi");
  }

  void Delete() {
    print("Müşteri Silindi");
  }

  void Update() {
    print("Müşteri Güncellendi");
  }
}

void main() {
  var customerManager = new CustomerManager();
  customerManager.name = "Enes";
  customerManager.lastName = "Baysan";
  customerManager.salary = 3000;
  customerManager.Save();
}
