import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.orange, accentColor: Colors.cyan),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Temeller İçin Uygulama",
                style: TextStyle(color: Colors.red),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => print("FBA TIKLANDI"),
              child: Icon(
                Icons.accessibility,
                color: Colors.red,
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade100,
                      child: Text(
                        "B",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade300,
                      child: Text(
                        "Y",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade500,
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade700,
                      child: Text(
                        "N",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                 Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade200,
                      child: Text(
                        "E",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                     Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade300,
                      child: Text(
                        "N",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                     Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade400,
                      child: Text(
                        "E",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                     Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(2),
                      color: Colors.red.shade500,
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
              ],
            )),
      ),
    );
