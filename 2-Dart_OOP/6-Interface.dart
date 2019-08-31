class IManager {
  void save() {
    print("Kaydedildi");
  }
}

class CustomerManager implements IManager { // implements ile o classtan implement ederiz
  @override
  void save() {
    // TODO: implement save
  }
}
