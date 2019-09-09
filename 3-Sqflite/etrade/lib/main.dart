import 'package:etrade/screens/productList.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
        ),
        body: ProductList(),
      ),
    ));
