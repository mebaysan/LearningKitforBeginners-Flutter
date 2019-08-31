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
      home: MyHomePage(),
    );
  }
}

// Değişen bir data varsa StateFull Widget yazmalıyız
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StudentDialogBoxState();
}

// Yukardaki Stateful(durum bazlı) widget için bir state yazıyoruz
class StudentDialogBoxState extends State<MyHomePage> {
  // MyHomePage'in state'ini tutacak.
  String studentName = ""; // her statei bu şekilde belirtebiliriz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student App"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            // yazı yazmak için alan
            onChanged: (String nameToChange) {
              // onChanged eventi -> değişim olduğunda
              setState(() { // durumu belirliyoruz
                studentName = nameToChange;
              });
            },
          ),
          Text("Naber " + studentName),
        ],
      ),
    );
  }
}
