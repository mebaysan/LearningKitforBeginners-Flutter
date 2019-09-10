import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Demo',
      theme: ThemeData(
          primaryColor: Color(0xff075E54), 
          accentColor: Color(0xff25D366)),
      home: Home(),
    );
  }
}
