import 'package:flutter/material.dart';
import 'package:whatsapp/screens/whatsApp_home.dart';

void main() => runApp(WhatsApp());

class WhatsApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      home: WhatsAppHome(),
    );
  }
}
