import 'package:drawer_demo/screens/customer_screen.dart';
import 'package:drawer_demo/screens/home.dart';
import 'package:drawer_demo/screens/product_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Drawer Widget Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
        routes: <String, WidgetBuilder>{
          CustomerScreen.routeName: (BuildContext context) => CustomerScreen(),
          ProductScreen.routeName: (BuildContext context) => ProductScreen(),
        });
  }
}
