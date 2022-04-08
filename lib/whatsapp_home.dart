import 'package:flutter/material.dart';
import 'package:whatapp_ui_clone/pages/call_screen.dart';
import 'package:whatapp_ui_clone/pages/camera_screen.dart';
import 'package:whatapp_ui_clone/pages/chat_screen.dart';
import 'package:whatapp_ui_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
          Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("Chats"),
      ),
    );
  }
}
