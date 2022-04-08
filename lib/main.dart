import 'package:flutter/material.dart';
import 'package:whatapp_ui_clone/whatsapp_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff75E54),
        accentColor: Color(0xff75E54),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}