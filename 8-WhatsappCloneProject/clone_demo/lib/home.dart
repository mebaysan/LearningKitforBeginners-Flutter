import 'package:clone_demo/screens/call_screen.dart';
import 'package:clone_demo/screens/chat_screen.dart';
import 'package:clone_demo/screens/status_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              text: "Sohbetler",
            ),
            Tab(
              text: "Durum",
            ),
            Tab(
              text: "Aramalar",
            )
          ],
        ),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Text("Kamera"),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          print("Sohbet ekranına basıldı");
        },
      ),
    );
  }
}
