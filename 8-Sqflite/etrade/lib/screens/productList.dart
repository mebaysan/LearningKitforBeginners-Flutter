import 'package:etrade/db/dbHelper.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductListState();
}

class ProductListState extends State {
  DbHelper dbHelper = new DbHelper();
  List<Product> products;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if (products == null) {
      products = new List<Product>();
      getData();
    }
    return Scaffold(
      body: ProductListItems(),
    );
  }

  ProductListItems() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.amberAccent,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("A"),
            ),
            title: Text(this.products[position].name),
            subtitle: Text(this.products[position].description),
            onTap: () {
              
            },
          ),
        );
      },
    );
  }

  void getData() {
    var dbFuture = dbHelper.initializeDb();
    dbFuture.then((result) {
      var productsFuture = dbHelper.getProducts();
      productsFuture.then((result) {
        List<Product> productsData = new List<Product>();
        count = result.length;
        for (var i = 0; i < count; i++) {
          productsData.add(Product.fromObject(result[i]));
        }
        setState(() {
          products = productsData;
          count = count;
        });
      });
    });
  }
}
