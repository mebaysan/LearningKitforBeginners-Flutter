class Product {
  int _id;
  String _name;
  String _description;
  double _price;

  Product(this._name, this._description,
      this._price); // constructor oluşturduk gelen parametreler Product nesnesini oluşturacak
  Product.withId(this._id, this._name, this._description,
      this._price); // bu da 2. constructor, Id parametresi de bekleyecek (update işlemi için)

  int get id =>
      _id; // kullanıcı product.id deyince _id döndüreceğiz. bildiğimiz getter setter işlemi
  String get name => _name;
  String get description => _description;
  double get price => _price;

  set name(String value) {
    // get ettiğimiz değeri yazmalıyız
    if (value.length >= 2) {
      _name = value;
    }
  }

  set description(String value) {
    if (value.length >= 10) {
      // burda kendimizce bir validation yaptık
      _description = value;
    }
  }

  set price(double value) {
    if (value > 0) {
      _price = value;
    }
  }

  Map<String, dynamic> toMap() {
    // sözlüğümüz key value- key kısmı hep string fakat value kısmı dynamic olacak
    // elimizdeki nesneyi map'e çevirecek
    var map = Map<String, dynamic>();
    map["name"] = _name;
    map["description"] = _description;
    map["price"] = _price;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }

  Product.fromObject(dynamic o) {
    // parametre olarak dynamic bir parametre alır
    // mesela product diye tanımlanmamış ama elimizdeki json objesi bizim product nesnemizin yapısına uygun o zaman bu objeyi Product nesnesine çevirir
    this._id = o["Id"];
    this._name = o["Name"];
    this._price = double.tryParse(o["Price"].toString());
    this._description = o["Description"];
  }
}
