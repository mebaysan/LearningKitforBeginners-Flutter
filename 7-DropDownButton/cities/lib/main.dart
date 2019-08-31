import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CitySelectorWidget(),
    );
  }
}

class CitySelectorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CitySelectorState();
}

class CitySelectorState extends State<CitySelectorWidget> {
  var cities = ["Ankara", "İstanbul", "Erzurum", "Hakkari"];
  var selectedCity = "Ankara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şehir Seçme Uygulaması"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              // dropdown butonu oluşturduk
              items: cities.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              value: selectedCity,
              onChanged: (String value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
            Text("Şuan seçtiğiniz şehir = " + selectedCity),
          ],
        ),
      ),
    );
  }
}
