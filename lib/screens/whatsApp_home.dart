import 'package:flutter/material.dart';
import 'package:whatsapp/screens/calls.dart';
import 'package:whatsapp/screens/camera.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
    Tab(
      text: "CHATS",
    ),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "CALLS",
    )
  ];

  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
        ),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 18),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
        bottom: TabBar(
          indicatorWeight: 2,
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
      ),
    );
  }
}
